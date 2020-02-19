local tab = require('common.tab')

local function clickGift()
    mSleep(500)
    sysLog('查找赠送按钮')
    local x, y = findColor(
        {624, 10, 942, 392}, 
        "0|0|0xd1cfc1,-66|-17|0xcef4a1,65|-14|0xbfee84,-67|20|0x659916",
        95, 0, 0, 0
    )
    if x > -1 then
        tab(x, y)
        sysLog('点击赠送')
    end

    mSleep(500)
    sysLog('退出赠送按钮函数')
end

-- 赠送神器操作抽象
-- area => Object
-- offset => String
local function daoJu()
    while true do
        mSleep(500)
        sysLog('查找第一条留言')
        local x0, y0 = findColor(
            {451, 119, 1124, 280}, 
            "0|0|0x98aec2,-336|-83|0xe1e6ec,-334|23|0x869eb6,-112|27|0x839bb3,65|14|0x8ea4bb,100|-14|0xa3b6c7,177|-49|0xcbd5df,270|-75|0xdbe2ea",
            95, 0, 0, 0
        )

        if x0 > -1 then
            sysLog('查找留言成功')
            mSleep(500)
            tab(x0, y0)
            sysLog('点击留言')
            -- 点击赠送
            clickGift()

            -- 点击道具
            tab(375, 225)
            mSleep(500)
            -- 点击道具
            tab(755, 417)
        end
        mSleep(500)
    end
end

return daoJu