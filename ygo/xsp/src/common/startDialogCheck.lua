local tab = require('common.tab')

-- 进入游戏时的弹窗关闭

-- 今日任务
local function todayTask()
    sysLog('今日任务校验')
    local todayTaskCount = 0

    while true do
        local x, y = findColor(
            {374, 156, 952, 232}, 
            "0|0|0x646b76,106|-3|0x1a2d74,215|-1|0x0051c6,321|-1|0x1b2f74,379|2|0x7f85b8,454|1|0x575c66,193|18|0xf9c505,239|19|0x6f8471,319|17|0x10246b",
            95, 0, 0, 0
        )
        if x > -1 then
            tab(680, 100)
            break
        end

        if todayTaskCount >= 10 then
            sysLog('今日任务校验退出')
            break
        else
            todayTaskCount = todayTaskCount + 1
        end

        mSleep(1000)
    end
end

-- 推荐 banner
local function recommendBanner()
    sysLog('推荐弹窗校验')
    local count = 0

    while true do
        local x, y = findColor(
            {1043, 45, 1159, 117}, 
            "0|0|0x252b34,62|1|0x847761,72|11|0x8d7e66,36|15|0xfdfeff,62|17|0xd56931,58|28|0xab1f10,21|23|0xac1601",
            95, 0, 0, 0
        )
        if x > -1 then
            tab(1110, 86)
        else
            count = count + 1
        end

        if count >= 20 then
            todayTask()
            sysLog('推荐弹窗校验退出')
            break
        end

        mSleep(1000)
    end

    mSleep(500)
end

-- 每日签到
local function startDialogCheck()
    sysLog('每日签到校验')
    mSleep(5000)
    local count = 0

    while true do
        local x, y = findColor(
            {1059, 23, 1173, 93}, 
            "0|0|0xf67b4d,13|-1|0xf68b66,49|-5|0x8c91a5,59|-6|0xfafcfc,71|5|0xb1bbce,68|33|0xdf8c72,14|32|0x941301,37|16|0xfdfbfc",
            95, 0, 0, 0
        )
        if x > -1 then
            mSleep(500)
            tab(1124, 58)
            recommendBanner()
            sysLog('每日签到校验退出')
            break
        else
            count = count + 1
        end

        if count >= 10 then
            recommendBanner()
            sysLog('每日签到校验退出')
            break
        end

        mSleep(1000)
    end

    mSleep(500)
end

return startDialogCheck