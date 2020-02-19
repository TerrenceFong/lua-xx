local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local split = require('utils/split')
local tab = require('common.tab')
local daoJu = require('common.daoJu')

bb.loadluasocket()
bb.loaduilib()
local http = bb.http
local json = bb.getJSON()

-- hud 初始化
local hud = createHUD()

-- 赠送神器
local function startSendDaoJu()
    sysLog('开始赠送')
    mSleep(2000)

    daoJu()
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
        startSendDaoJu()
    end
end

local function daoJu()
    findJiangLi()
end

return daoJu