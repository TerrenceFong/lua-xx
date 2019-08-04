local tab = require('common.tab')

-- 点击开始战斗
local function clickStart()
    sysLog('寻找开始点击按钮')
    mSleep(1500)
    local x, y = findColors(
        {735, 530, 899, 613}, 
        "0|0|0xfec048,-1|28|0x845400,107|-6|0xffcb64,102|40|0xbe7600,40|17|0x413800,63|18|0xd2cf00,77|25|0x352100,51|-4|0xfec85c,52|31|0x895600",
        95, 0, 0, 0
    )
    if x > -1 then
        mSleep(1000)
        tab(790, 570)
        sysLog('已点击开始战斗')
        mSleep(1000)
    end
end

return clickStart