local tab = require('common.tab')

-- 网络错误/顶号弹窗
local function globalDialogError()
    local x, y = findColor(
        {329, 216, 1005, 524}, 
        "0|0|0x8d92b8,-7|8|0x302e3e,620|-1|0x8e93b9,629|7|0x2e2d36,310|3|0xb9b9b7,318|36|0x30324b",
        95, 0, 0, 0
    )
    if x > -1 then
        sysLog('出现错误弹窗，已点击')
        tab(666, 420)
        return true
    end

    return false
end

return globalDialogError