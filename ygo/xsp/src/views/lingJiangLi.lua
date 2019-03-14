local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local split = require('utils/split')
local device = require('device')

-- 账号
local jiangLiAccountList = require('utils/jiangLiAccountList')

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

-- 领取奖励
local function lingQu()
    sysLog('获取可领取的个数')
    mSleep(2000)
    local point = findColors(
        {448, 120, 1126, 653}, 
        "1015|228|0x609517,1078|207|0x6a6c6d,1077|252|0x818c5e,953|254|0x3a3b42,981|210|0xd9f5b5,979|224|0x8bcb38,979|238|0x4e8002,1020|228|0xfffaf0,1061|227|0x7cbd23",
        95, 0, 0, 0
    )
    if #point ~= 0 then
        sysLog('获取可领取的个数为：'..#point)
        for var = 1, #point do
            tab(point[var].x, point[var].y)
            mSleep(2500)
            tab(665, 695)
            mSleep(1000)
        end
    end
end

-- 寻找奖励入口
local function findJiangLi()
    sysLog('寻找奖励入口')
    mSleep(1000)
    local x, y = findColor(
        {211, 108, 418, 590}, 
        "0|0|0x83859d,81|1|0x383a4a,85|10|0xada9c8,162|66|0x1a1c2e,76|35|0xfffaf0,84|35|0x666184,95|42|0xd8d3cc,79|55|0x666283,107|28|0x686284",
        95, 0, 0, 0
    )
    if x > -1 then
        sysLog('找到奖励入口')
        mSleep(1000)
        tab(320, 350)
        lingQu()
    end
end

-- 寻找邮件入口
local function findEmail()
    sysLog('寻找邮件入口')
    mSleep(2000)
    local x, y = findColor(
        {622, 53, 1331, 167}, 
        "0|0|0xab9fa0,17|-6|0xefe9e9,15|12|0xfefdfd,3|12|0x14b7fa,18|19|0x36e5fe,32|14|0x3caefc,18|68|0x19354d,33|70|0xfceaaa,50|30|0x3c4654",
        95, 0, 0, 0
    )
    if x > -1 then
        sysLog('找到邮件入口')
        mSleep(1000)
        tab(1195, 105)
        findJiangLi()
    end
end

-- 选择需要刷的账号
local function selectAccount()
    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 960, height = 600})
    local page = Page:create("page")
    page.text = "选择账号"
    local checkboxgroup = CheckBoxGroup:create('accountGroup')
    checkboxgroup:setList(unpack(jiangLiAccountList))

    local selectIndex = {}
    for i, v in ipairs(jiangLiAccountList) do
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
            table.insert(selectAccountList, jiangLiAccountList[value + 1])
        end

        sysLog('开始遍历账号')
        for i, v in ipairs(selectAccountList) do
            sysLog('当前账号为：'..v)
            showHUD(accountHUD, "当前账号为："..v, 16, "0xffff0000", "msgbox_click.png", 3, 0, 40, 300, 20)
            device(function()
                login(function()
                    inputAccount(v)
                    sysLog('账号输入完成')
                end)
                startDialogCheck()
                -- 寻找奖励
                sysLog('寻找奖励')
                findEmail()
                -- 领完后记录完成的账号数
                finishAccountTimes = finishAccountTimes + 1
                showHUD(hud, "号："..finishAccountTimes, 12, "0xffff0000", "0xffffffff", 0, 0, -5, 128, 32)
            end, true)
            mSleep(3000)
        end
        dialog("号："..finishAccountTimes)
        hideHUD(hud)
        hideHUD(accountHUD)
    end
end

return shuaShenQi