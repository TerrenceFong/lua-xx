local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local split = require('utils/split')
local device = require('device')

-- 账号
local accountList = require('utils/accountList')

-- 神器列表和信息
local shenQiInfo = require('utils/shenQiInfo')

local autoFight = require('common.autoFight')
local tab = require('common.tab')
local inputAccount = require('common.inputAccount')

local login = require('common.login')
local startDialogCheck = require('common.startDialogCheck')
local findEntrance = require('common.findEntrance')
local clickStart = require('common.clickStart')
local checkStatus = require('common.checkStatus')
local shenQi = require('common.shenQi')

local globalDialogError = require('common.globalDialogError')
local lvUpDialog = require('common.lvUpDialog')

bb.loadluasocket()
bb.loaduilib()
local http = bb.http
local json = bb.getJSON()

-- 完成号的个数
local finishAccountTimes = 0

-- hud 初始化
local hud = createHUD()

-- 赠送神器
local function startSendShenQi()
    sysLog('开始赠送')
    mSleep(2000)

    for i, v in ipairs(_G.selectShenQiList) do
        shenQi(shenQiInfo.info[v], _G.shenQiRes[v])
    end

    mSleep(2000)
    sysLog('当前账号已送完')
end

-- 寻找留言入口
local function findJiangLi()
    sysLog('寻找留言入口')
    mSleep(1000)
    local x, y = findColor(
        {211, 108, 418, 590}, 
        "0|0|0x83859d,81|1|0x383a4a,85|10|0xada9c8,162|66|0x1a1c2e,76|35|0xfffaf0,84|35|0x666184,95|42|0xd8d3cc,79|55|0x666283,107|28|0x686284",
        95, 0, 0, 0
    )
    if x > -1 then
        sysLog('找到留言入口')
        mSleep(1000)
        tab(320, 540)
        startSendShenQi()
    end
end

-- 寻找邮件入口
local function findEmail()
    sysLog('寻找邮件入口')
    mSleep(2000)
    -- local x, y = findColor(
    --     {622, 53, 1331, 167}, 
    --     "0|0|0xab9fa0,17|-6|0xefe9e9,15|12|0xfefdfd,3|12|0x14b7fa,18|19|0x36e5fe,32|14|0x3caefc,18|68|0x19354d,33|70|0xfceaaa,50|30|0x3c4654",
    --     95, 0, 0, 0
    -- )
    -- if x > -1 then
    --     sysLog('找到邮件入口')
        mSleep(1000)
        tab(1195, 105)
        findJiangLi()
    -- end
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

local function selectShenQi()
    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 960, height = 600})
    local page = Page:create("page")
    page.text = "选择赠送神器"
    local checkboxgroup = CheckBoxGroup:create('shenQiGroup')
    checkboxgroup:setList(unpack(shenQiInfo.list))

    -- 积木
    local eidtJiMu = Edit:create("jiMu", {color = "0, 0, 0", size = 20, prompt = "积木 默认 0 -- 无限"})
    eidtJiMu.align = TextAlign.LEFT
    -- 轮子
    local eidtLunZi = Edit:create("lunZi", {color = "0, 0, 0", size = 20, prompt = "轮子 默认 0 -- 无限"})
    eidtLunZi.align = TextAlign.LEFT
    -- 锡杖
    local eidtXiZhang = Edit:create("xiZhang", {color = "0, 0, 0", size = 20, prompt = "锡杖 默认 0 -- 无限"})
    eidtXiZhang.align = TextAlign.LEFT
    -- 眼
    local eidtYan = Edit:create("yan", {color = "0, 0, 0", size = 20, prompt = "眼 默认 0 -- 无限"})
    eidtYan.align = TextAlign.LEFT
    -- 首饰
    local eidtShouShi = Edit:create("shouShi", {color = "0, 0, 0", size = 20, prompt = "首饰 默认 0 -- 无限"})
    eidtShouShi.align = TextAlign.LEFT
    -- 钥匙
    local eidtYaoShi = Edit:create("yaoShi", {color = "0, 0, 0", size = 20, prompt = "钥匙 默认 0 -- 无限"})
    eidtYaoShi.align = TextAlign.LEFT
    -- 天秤
    local eidtTianCheng = Edit:create("tianCheng", {color = "0, 0, 0", size = 20, prompt = "天秤 默认 0 -- 无限"})
    eidtTianCheng.align = TextAlign.LEFT

    local selectIndex = {}
    for i, v in ipairs(shenQiInfo.list) do
        table.insert(selectIndex, i - 1)
    end
    print_r(selectIndex)
    checkboxgroup:setSelects(unpack(selectIndex))
    
    rootview:addView(page)
    page:addView(checkboxgroup)
    page:addView(eidtJiMu)
    page:addView(eidtLunZi)
    page:addView(eidtXiZhang)
    page:addView(eidtYan)
    page:addView(eidtShouShi)
    page:addView(eidtYaoShi)
    page:addView(eidtTianCheng)
    
    uijson = json.encode(rootview)
    return showUI(uijson)
end

local function sendShenQi()
    -- local OCR = require("baiduOCR.百度云OCR")
    -- local text = OCR.文字范围(524,81,723,130)
    -- sysLog(text)

    local accountHUD  = createHUD()

    local ret, res = selectAccount()

    local shenQiRet, shenQiRes = selectShenQi()

    _G.shenQiRes = shenQiRes

    print_r(res)
    print_r(shenQiRes)

    if ret == 1 and shenQiRet == 1 then
        -- 获取多选项的 index 集
        local selectAccountIndex = split(res.accountGroup, '@')
        -- 根据 index 筛选出对应的账号
        local selectAccountList = {}
        for index, value in ipairs(selectAccountIndex) do
            table.insert(selectAccountList, accountList[value + 1])
        end

        -- 获取多选项的 index 集
        local selectShenQiIndex = split(shenQiRes.shenQiGroup, '@')
        -- 根据 index 筛选出对应的神器
        local selectShenQiList = {}
        for index, value in ipairs(selectShenQiIndex) do
            table.insert(selectShenQiList, shenQiInfo.list[value + 1])
        end

        _G.selectShenQiList = selectShenQiList
        print_r(selectShenQiList)

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
                -- 寻找神器
                sysLog('寻找神器')
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

return sendShenQi