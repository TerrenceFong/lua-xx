local tab = require('common.tab')

-- 升级弹窗
local function lvUpDialog()
    local x, y = findColor(
        {362, 105, 970, 610}, 
        "0|0|0xfecb2e,95|8|0xfebb1c,191|8|0xffb916,304|23|0xfd860c,-125|-5|0x506d8e,-135|364|0x8eadf1,405|10|0x607395,410|374|0x8ba9e8,139|415|0x039ef0",
        95, 0, 0, 0
    )
    if x > -1 then
        tab(667, 528)
    end
    
    mSleep(500)
end

return lvUpDialog