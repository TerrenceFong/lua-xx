local WIN = 'win'
local LOSE = 'lose'
local DRAW = 'draw'

-- 检测胜利 失败 平
local function checkStatus()
    sysLog('判断胜负状态')
    mSleep(1500)
    
    keepScreen(true)
    -- local x1, y1 = findColor(
    --     {270, 143, 1101, 593}, 
    --     "460|183|0xa0c9c8,514|187|0xfffffd,569|195|0x10717e,507|298|0x7e7975,510|385|0x6d6864,529|540|0xeb2309,591|343|0xa50b07,595|520|0x8e8986",
    --     95, 0, 0, 0
    -- )
    local x1, y1 = findMultiColorInRegionFuzzy(0xc3864f,"38|12|0xffffff,99|18|0x301f10,180|26|0xffffff", 95, 901, 148, 1173, 247)

    -- local x2, y2 = findColor(
    --     {270, 143, 1101, 593}, 
    --     "497|191|0x048d8d,548|178|0x7ac6d5,504|247|0xfffeae,539|281|0x181310,503|360|0x555f2a,483|422|0x043732,474|515|0x4f3831,611|525|0x572418",
    --     95, 0, 0, 0
    -- )
    local x2, y2 = findMultiColorInRegionFuzzy(0xffffff,"81|-27|0x131a27,169|-31|0xffffff,214|-5|0x101725", 95, 900, 150, 1178, 243)
    keepScreen(false)

    sysLog('是否胜利')
    if x1 > -1 then
        sysLog('胜利')
        return WIN
    end
    
    sysLog('是否失败')
    if x2 > -1 then
        sysLog('失败')
        return LOSE
    end

    sysLog('平局')
    return DRAW
end

return checkStatus