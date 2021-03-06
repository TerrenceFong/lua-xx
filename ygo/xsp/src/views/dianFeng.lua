local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local device = require('device')

local autoFight = require('common.autoFight')
local tab = require('common.tab')

local login = require('common.login')
local startDialogCheck = require('common.startDialogCheck')
local findEntrance = require('common.findEntrance')
local clickStart = require('common.clickStart')
local useBottle = require('common.useBottle')
local checkStatus = require('common.checkStatus')

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

-- 重开次数
local restartTimes = 0

-- 判断重开后是否需要从今日任务页进入
local afterRestartNeedStart = false

local WIN = 'win'
local LOSE = 'lose'
local DRAW = 'draw'

-- hud 初始化
local hud = createHUD()

local function restartCallBack()
    sysLog('重开回调')

    restartTimes = restartTimes + 1
    afterRestartNeedStart = true
    showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，重开："..restartTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)

    -- 等待 10 秒，或者更长。确保已经进入 开始推荐页 / 战斗页
    mSleep(10000)

    keepScreen(true)
    -- 检查是否为手动
    local x1, y1 = findColor(
        {2, 149, 82, 226}, 
        "0|0|0xc2bef0,0|-32|0xc0f3fd,25|-15|0xc7d7d0,26|27|0xfceaaa,-25|26|0xfceaaa,-26|-15|0xd6ffff,-12|-20|0xfefefe,9|-16|0x012760,11|7|0xf6f5fd",
        85, 0, 0, 0
    )

    -- 胜利
    local x2, y2 = findColor(
        {270, 143, 1101, 593}, 
        "460|183|0xa0c9c8,514|187|0xfffffd,569|195|0x10717e,507|298|0x7e7975,510|385|0x6d6864,529|540|0xeb2309,591|343|0xa50b07,595|520|0x8e8986",
        95, 0, 0, 0
    )

    -- 失败
    local x3, y3 = findColor(
        {270, 143, 1101, 593}, 
        "497|191|0x048d8d,548|178|0x7ac6d5,504|247|0xfffeae,539|281|0x181310,503|360|0x555f2a,483|422|0x043732,474|515|0x4f3831,611|525|0x572418",
        95, 0, 0, 0
    )
    keepScreen(false)

    if x1 > -1 then
        sysLog('重开后在战斗页面')
        autoFight()
        sysLog('重置自动战斗状态成功！')
    elseif x2 > -1 or x3 > -1 then
        sysLog('重开后在胜负页面')
        sysLog('重置 判断重开后是否需要从今日任务页进入')
        afterRestartNeedStart = false
        -- 可能会导致该场胜负没有被记录
        tab(475, 680)
        startDialogCheck()
        sysLog('重新进入战斗')
        findEntrance(function()
            useBottle()
            clickStart()
            autoFight()
        end)
    else
        sysLog('重开后不在战斗页面')
        sysLog('重置 判断重开后是否需要从今日任务页进入')
        afterRestartNeedStart = false
        startDialogCheck()
        sysLog('重新进入战斗')
        findEntrance(function()
            useBottle()
            clickStart()
            autoFight()
        end)
    end
end

local function restartApp()
    local isRestart = _G.UIResults.isRestart
    -- 判断是否勾选重开
    if isRestart == '0' then
        mSleep(1000)
        local flag = isFrontApp("com.demea.conur")
        sysLog('判断是否要重开：0 == 不在前台运行；1 == 在前台运行')
        sysLog('当前状态码：'..flag)
        if flag == 1 then return end

        sysLog('需要重开')

        device(function()
            login()
            restartCallBack()
        end)
    end
end

local function returnPage(cb)
    mSleep(1000)
    while true do
        sysLog('结果页前判断是否重开')
        restartApp()
        -- 错误判断逻辑
        globalDialogError()
        lvUpDialog()
        sysLog('弹窗错误通过')
        -- 错误确认后不会自动点自动战斗（待定）
        -- 假如错误判断后，战斗已经结束，要怎么跳出循环？

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

-- 脚本结束时执行的函数
local function luaExitCtrl()
    hideHUD(hud)

    local info = '胜利场数：'..successTimes..'\n\n'..'失败场数：'..failTimes..'\n\n'..'平局场数：'..drawTimes..'\n\n'..'重开次数：'..restartTimes

    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 660, height = 600})
    local page = Page:create("page")
    page.text = "战斗统计"
    local label = Label:create("Label", {color = "0, 0, 225", size = 30, text = info})
    
    rootview:addView(page)    --把page添加到rootview
    page:addView(label)       --把label添加到page
    
    uijson = json.encode(rootview)
    showUI(uijson)
end

-- onBeforeUserExit 脚本运行终止回调 xx专属回调
-- function onBeforeUserExit()
--     luaExitCtrl()
-- end

local function startFight()
    -- 设置默认值
    needClickStart = needClickStart or true

    -- 目标胜利场次
    local targetTimes = _G.UIResults.winTimes
    if (targetTimes == "") then
		targetTimes = 100
	else
		targetTimes = tonumber(targetTimes)
	end

    while true do
        sysLog('开始战斗前检测')
        restartApp()

        useBottle()
        clickStart()

        sysLog('开始战斗后检测')
        -- restartApp()
	
        autoFight(restartApp)
        
        returnPage(function()
            local status = checkStatus()
            if status == WIN then
                successTimes = successTimes + 1
            elseif status == LOSE then
                failTimes = failTimes + 1
            else
                drawTimes = drawTimes + 1
            end
            showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，重开："..restartTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)
        end)

        mSleep(1000)
        -- 循环终止条件
        if successTimes == targetTimes then
			break
        end

        if afterRestartNeedStart == true then
            sysLog('重开后重新进入流程')
            startDialogCheck()
            sysLog('推荐/今日任务页检查完成')
            findEntrance(function()
                sysLog('重置 判断重开后是否需要从今日任务页进入')
                afterRestartNeedStart = false
            end)
        end
		
		mSleep(1000)
    end
    
    sysLog('success finish')
    luaExitCtrl()
end

local function dianFeng()
    showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes.."，重开："..restartTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)

    findEntrance(startFight)
end

return dianFeng