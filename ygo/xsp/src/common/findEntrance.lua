local tab = require('common.tab')

-- 关闭每周段位重置弹窗
local function closeWeekRankReset()
    mSleep(3000)
    sysLog('检查是否需要关闭段位重置弹窗')
    local x, y = findColor(
        {353, 174, 979, 574}, 
        "0|0|0x4e5262,573|-8|0xf4e0ca,583|0|0xd77e3d,579|340|0x9ca1c2,-3|344|0x606081,286|14|0x0083ff,282|158|0x30324b,286|281|0xb6e971,288|318|0x578a0b",
        95, 0, 0, 0
    )
    if x > -1 then
        mSleep(1000)
        tab(935, 215)
        sysLog('已关闭段位重置弹窗')
    else
        sysLog('未发现段位重置弹窗')
    end
    mSleep(1000)
end

-- 查找入口
local function findEntrance(cb)
    sysLog('查找入口')
    mSleep(1000)
    local findEntranceCount = 0

    while true do
        -- 普通
        -- local x, y = findColor(
        --     {906, 254, 1119, 443}, 
        --     "0|0|0xdcdcde,103|-2|0xd7d7db,-17|37|0x252c2e,122|39|0x303f41,-22|129|0x282b31,124|130|0x232c31,1|174|0x737b88,102|174|0x6e7482,47|77|0x12415e",
        --     95, 0, 0, 0
        -- )
        -- 春节
        local x, y = findColor(
            {900, 246, 1137, 450}, 
            "0|0|0x4b7293,68|9|0x5c4866,55|44|0xffffff,45|122|0xd1c6d4,73|117|0xfefdff,-26|81|0x593e60,38|139|0x555e7e,88|75|0x5d5275,43|61|0x5e4469",
            95, 0, 0, 0
        )
        if x > -1 then
            sysLog('查找入口成功')
            mSleep(1000)
            tab(1015, 350)
            closeWeekRankReset()
            cb()
            break
        end

        if findEntranceCount >= 10 then
            sysLog('查找入口退出')
            break
        else
            findEntranceCount = findEntranceCount + 1
        end

        mSleep(1000)
    end
end

return findEntrance