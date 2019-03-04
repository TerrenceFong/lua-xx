local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local split = require('utils/split')
local device = require('device')

-- 账号
local accountList = require('utils/accountList')

local autoFight = require('common.autoFight')
local tab = require('common.tab')
local inputAccount = require('common.inputAccount')

local login = require('common.login')
local startDialogCheck = require('common.startDialogCheck')
local findEntrance = require('common.findEntrance')
local clickStart = require('common.clickStart')
local checkStatus = require('common.checkStatus')

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

-- hud 初始化
local hud = createHUD()

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
            mSleep(500)
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
    local targetTimes = _G.UIResults.shenqiWinTimes
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

-- 选择需要刷的账号
local function selectAccount()
    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 960, height = 600})
    local page = Page:create("page")
    page.text = "选择账号"
    local checkboxgroup = CheckBoxGroup:create('accountGroup')
    checkboxgroup:setList(unpack(accountList))

    local selectIndex = {}
    for i, v in ipairs(accountList) do
        table.insert(selectIndex, i - 1)
    end
    print_r(selectIndex)
    checkboxgroup:setSelects(unpack(selectIndex))
    
    rootview:addView(page)
    page:addView(checkboxgroup)
    
    uijson = json.encode(rootview)
    return showUI(uijson)
end

local function shuaShenQi()
    -- local OCR = require("baiduOCR.百度云OCR")
    -- local text = OCR.文字范围(524,81,723,130)
    -- sysLog(text)

    local accountHUD  = createHUD()

    local ret, res = selectAccount()

    if ret == 1 then
        -- 获取多选项的 index 集
        local selectAccountIndex = split(res.accountGroup, '@')
        -- 根据 index 筛选出对应的账号
        local selectAccountList = {}
        for index, value in ipairs(selectAccountIndex) do
            table.insert(selectAccountList, accountList[value + 1])
        end

        sysLog('开始遍历账号')
        for i, v in ipairs(selectAccountList) do
            sysLog('当前账号为：'..v)
            showHUD(accountHUD, "当前账号为："..v, 16, "0xffff0000", "msgbox_click.png", 3, 0, 40, 300, 25)
            device(function()
                login(function()
                    inputAccount(v)
                    sysLog('账号输入完成')
                end)
                startDialogCheck()
                sysLog('进入战斗')
                findEntrance(startFight)
            end, true)
            mSleep(3000)
        end
        dialog("号："..finishAccountTimes)
        hideHUD(hud)
        hideHUD(accountHUD)
    end
end

return shuaShenQi