local tab = require('common.tab')

-- 确认使用
local function confirmBottle()
    sysLog('是否确认使用瓶子')
    mSleep(1500)
    local x, y = findColor(
        {328, 226, 1003, 524}, 
        "0|0|0x8d92b8,-8|262|0x3e4357,629|265|0xb7b9ce,630|9|0x5d6178,229|177|0xffbb3c,409|179|0x526832,314|272|0x5e627b,309|-1|0x525469",
        95, 0, 0, 0
    )
    if x > -1 then
        mSleep(1000)
        tab(760, 425)
        sysLog('已使用瓶子')
        mSleep(1000)
    end
end

-- 使用瓶子
local function useBottle()
    local isUseBottle = _G.UIResults.isUseBottle
    if isUseBottle == '0' then
        sysLog('是否需要用瓶子')
        mSleep(1500)
        local x, y = findColor(
            {591, 432, 979, 536}, 
            "0|0|0xb1bfe6,-1|82|0xc0d7e8,365|2|0xe7effa,368|80|0xc6d0f8,12|12|0x305033,67|67|0x424344,66|19|0x19191d,26|56|0x1fd039,331|39|0x22304c",
            95, 0, 0, 0
        )
        if x > -1 then
            mSleep(1000)
            tab(860, 488)
            sysLog('已点击瓶子')
            confirmBottle()
            mSleep(1000)
        end
    end
end

return useBottle