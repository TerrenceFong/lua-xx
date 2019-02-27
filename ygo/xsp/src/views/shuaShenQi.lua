local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local device = require('device')

local autoFight = require('common.autoFight')
local tab = require('common.tab')
local inputAccount = require('common.inputAccount')

local login = require('common.login')
local startDialogCheck = require('common.startDialogCheck')
local findEntrance = require('common.findEntrance')
local clickStart = require('common.clickStart')

local globalDialogError = require('common.globalDialogError')
local lvUpDialog = require('common.lvUpDialog')

bb.loadluasocket()
bb.loaduilib()
local http = bb.http
local json = bb.getJSON()

-- 完成号的个数
local finishAccountTimes = 0

local WIN = 'win'
local LOSE = 'lose'
local DRAW = 'draw'

local accountList = {
    'aaa111',
    'aaa112',
    'aaa113',
    'aaa114'
}

-- hud 初始化
local hud = createHUD()

-- 检测胜利 失败 平
local function checkStatus()
    mSleep(1000)
    
    keepScreen(true)
    local x1, y1 = findColor(
        {270, 143, 1101, 593}, 
        "460|183|0xa0c9c8,514|187|0xfffffd,569|195|0x10717e,507|298|0x7e7975,510|385|0x6d6864,529|540|0xeb2309,591|343|0xa50b07,595|520|0x8e8986",
        95, 0, 0, 0
    )

    local x2, y2 = findColor(
        {270, 143, 1101, 593}, 
        "497|191|0x048d8d,548|178|0x7ac6d5,504|247|0xfffeae,539|281|0x181310,503|360|0x555f2a,483|422|0x043732,474|515|0x4f3831,611|525|0x572418",
        95, 0, 0, 0
    )
    keepScreen(false)

    sysLog('是否胜利')
    if x1 > -1 then
        sysLog('胜利')
        return WIN
    end
    
    sysLog('是否失败')
    if x2 > -1 then
        sysLog('失败')
        return LOSE
    end

    sysLog('平局')
    return DRAW
end

local function returnPage(cb)
    mSleep(1000)
    while true do
        -- 错误判断逻辑
        globalDialogError()
        lvUpDialog()
        sysLog('弹窗错误通过')

        local x, y = findColor(
            {394, 642, 548, 718},
            "401|651|0x575f44,400|711|0x33322f,543|651|0x8b8a8a,542|710|0x2c2e22,472|657|0xbeee7f,472|669|0xa2dc53,472|685|0x508801,472|702|0x5f9211,465|682|0xfffaf0",
            95, 0, 0, 0
        )
        if x > -1 then
            cb()
            tab(475, 680)
            break
        else
            mSleep(5000)
        end
    end
end

local function startFight()
    -- 胜利/失败/平场次
    local successTimes = 0
    local failTimes = 0
    local drawTimes = 0
    showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，号："..finishAccountTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)

    -- 目标胜利场次
    local targetTimes = _G.UIResults.winTimes
    if (targetTimes == "") then
        -- 神器的30次就可以了
		targetTimes = 30
	else
		targetTimes = tonumber(targetTimes)
	end

    while true do
        clickStart()

        autoFight()
        
        returnPage(function()
            local status = checkStatus()
            if status == WIN then
                successTimes = successTimes + 1
            elseif status == LOSE then
                failTimes = failTimes + 1
            else
                drawTimes = drawTimes + 1
            end
            showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，号："..finishAccountTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)
        end)

        mSleep(1000)
        -- 循环终止条件
        if successTimes == targetTimes then
			break
        end
		
		mSleep(1000)
    end
    
    sysLog('success finish')
    finishAccountTimes = finishAccountTimes + 1
    showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，号："..finishAccountTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)
end

local function shuaShenQi()
    sysLog('开始遍历账号')
    for i, v in ipairs(accountList) do
        device(function()
            login(function()
                inputAccount(v)
                sysLog('账号输入完成')
                startDialogCheck()
                sysLog('进入战斗')
                findEntrance(startFight)
            end)
        end, true)
        mSleep(3000)
    end
    hideHUD(hud)
end

return shuaShenQi