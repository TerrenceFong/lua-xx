local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local device = require('device')

local autoFight = require('common.autoFight')
local tab = require('common.tab')

local login = require('common.login')
local startDialogCheck = require('common.startDialogCheck')
local findEntrance = require('common.findEntrance')

local globalDialogError = require('common.globalDialogError')
local lvUpDialog = require('common.lvUpDialog')

bb.loadluasocket()
bb.loaduilib()
local http = bb.http
local json = bb.getJSON()

-- 胜利/失败/平场次
local successTimes = 0
local failTimes = 0
local drawTimes = 0

local WIN = 'win'
local LOSE = 'lose'
local DRAW = 'draw'

-- hud 初始化
local hud = createHUD()
showHUD(hud, "胜："..successTimes..", 负："..failTimes..", 平："..drawTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)

local function restartApp()
    mSleep(1000)
    local flag = isFrontApp("com.demea.conur")
    print(flag)
    if flag == 1 then return end

    device(function()
        print('执行回调')
        login()
        startDialogCheck()
        findEntrance(startFight)
    end)
end

local function checkStatus()
    mSleep(1000)

    local x1, y1 = findColor(
        {270, 143, 1101, 593}, 
        "460|183|0xa0c9c8,514|187|0xfffffd,569|195|0x10717e,507|298|0x7e7975,510|385|0x6d6864,529|540|0xeb2309,591|343|0xa50b07,595|520|0x8e8986",
        95, 0, 0, 0
    )
    if x1 > -1 then
        return WIN
    end

    local x2, y2 = findColor(
        {270, 143, 1101, 593}, 
        "497|191|0x048d8d,548|178|0x7ac6d5,504|247|0xfffeae,539|281|0x181310,503|360|0x555f2a,483|422|0x043732,474|515|0x4f3831,611|525|0x572418",
        95, 0, 0, 0
    )
    if x2 > -1 then
        return LOSE
    end

    return DRAW
end

local function returnPage(cb)
    mSleep(1000)
    while true do
        restartApp()
        -- 错误判断逻辑
        globalDialogError()
        lvUpDialog()
        -- 错误确认后不会自动点自动战斗（待定）

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

local function start()
    mSleep(1000)
    local x, y = findColor(
        {694, 539, 879, 606}, 
        "702|542|0xfdba51,752|544|0xfeeabf,737|558|0xffbf48,737|574|0x996300,732|587|0x855400,731|599|0xd58b10,732|604|0xe69c2d,803|577|0xffff00,873|600|0xd0860b",
        95, 0, 0, 0
    )
    if x > -1 then
        tab(790, 570)
        mSleep(1000)
    end
end

local function startFight()
    -- 目标胜利场次
    local targetTimes = _G.UIResults.winTimes
    if (targetTimes == "") then
		targetTimes = 100
	else
		targetTimes = tonumber(targetTimes)
	end

    while true do
        restartApp()

        start()

        restartApp()
	
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
            showHUD(hud, "胜："..successTimes..", 负："..failTimes..", 平："..drawTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)
        end)

        mSleep(1000)
        -- 循环终止条件
        if successTimes == targetTimes then
			break
		end
		
		mSleep(1000)
    end
    
    print('success finish')
    hideHUD(hud)

    local info = '胜利场数：'..successTimes..'\n\n'..'失败场数：'..failTimes..'\n\n'..'平局场数：'..drawTimes..'\n\n'

    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 660, height = 600})
    local page = Page:create("page")
    page.text = "战斗统计"
    local label = Label:create("Label", {color = "0, 0, 225", size = 30, text = info})
    
    rootview:addView(page)    --把page添加到rootview
    page:addView(label)       --把label添加到page
    
    uijson = json.encode(rootview)
    showUI(uijson)
end

local function dianFeng()
    -- 每周第一次进入时弹窗校验（待做）

    findEntrance(startFight)
end

return dianFeng