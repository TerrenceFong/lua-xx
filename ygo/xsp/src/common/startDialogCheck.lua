local tab = require('common.tab')

-- 进入游戏时的弹窗关闭

-- 今日任务
local function todayTask()
    print('今日任务校验')
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

        mSleep(1000)
    end
end

-- 推荐 banner
local function startDialogCheck()
    print('推荐弹窗校验')
    mSleep(5000)
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
            break
        end

        mSleep(1000)
    end

    mSleep(500)
end

return startDialogCheck