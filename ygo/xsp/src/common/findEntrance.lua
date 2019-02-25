local tab = require('common.tab')

-- 查找入口
local function findEntrance(cb)
    local x, y = findColor(
        {906, 254, 1119, 443}, 
        "0|0|0xdcdcde,103|-2|0xd7d7db,-17|37|0x252c2e,122|39|0x303f41,-22|129|0x282b31,124|130|0x232c31,1|174|0x737b88,102|174|0x6e7482,47|77|0x12415e",
        95, 0, 0, 0
    )
    if x > -1 then
        mSleep(1000)
        tab(1015, 350)
        cb()
    end
end

return findEntrance