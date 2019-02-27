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

local accountList = {
    'aaa111',
    'aaa112',
    'aaa113',
    'aaa114'
}

-- hud 初始化
local hud = createHUD()
showHUD(hud, "胜："..successTimes.."，负："..failTimes.."，平："..drawTimes, 12, "0xffff0000", "0xffffffff", 0, 200, -5, 228, 32)

local function shuaShenQi()
    tab(630, 230)
    mSleep(1000)
    sysLog('清空输入框')
    inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
    mSleep(1000)
    sysLog('填入账号到输入框')
    inputText("Welcome.#ENTER#")
    mSleep(1000)
    sysLog('隐藏输入法')
    tab(1230, 390)
end

return shuaShenQi