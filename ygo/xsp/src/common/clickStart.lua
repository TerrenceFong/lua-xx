local tab = require('common.tab')

-- 点击开始战斗
local function clickStart()
    mSleep(1000)
    local x, y = findColor(
        {694, 539, 879, 606}, 
        "702|542|0xfdba51,752|544|0xfeeabf,737|558|0xffbf48,737|574|0x996300,732|587|0x855400,731|599|0xd58b10,732|604|0xe69c2d,803|577|0xffff00,873|600|0xd0860b",
        95, 0, 0, 0
    )
    if x > -1 then
        tab(790, 570)
        sysLog('已点击开始战斗')
        mSleep(1000)
    end
end

return clickStart