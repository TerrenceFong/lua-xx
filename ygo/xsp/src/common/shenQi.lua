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
local function shenQi(info, num)
    local title = info.title
    local area = info.area
    local has = info.has
    local noHas = info.noHas

    -- 已赠送个数
    local hasSend = 0
    -- 目标赠送个数 默认为空 一直送到没有为止
    if (num == "") then
		num = 0
	else
		num = tonumber(num)
	end

    sysLog('当前为：'..title)
    -- 累积找不到神器的次数
    local count = 0

    while true do
        mSleep(500)
        sysLog('查找第一条留言')
        local x0, y0 = findColor(
            {451, 113, 821, 284}, 
            "0|0|0x10152b,-170|-30|0xc2c5d1,-135|-9|0xffffff,-114|-9|0xfefefe,-90|-6|0xffffff,-68|-9|0xffffff,-44|-8|0xffffff,59|-8|0x404042,-169|48|0x6c6f79",
            95, 0, 0, 0
        )

        if x0 > -1 then
            sysLog('查找留言成功')
            mSleep(500)
            tab(x0, y0)
            sysLog('点击留言')
            -- 点击赠送
            clickGift()

            -- 寻找神器
            sysLog('寻找神器是否还有库存')
            local x, y = findColor(
                area,
                has,
                95, 0, 0, 0
            )

            if x > -1 then
                sysLog('库存还有')
                tab(x, y)
                mSleep(500)
                tab(755, 417)
                hasSend = hasSend + 1
                count = 0
                sysLog('赠送成功')
            else
                mSleep(500)
                sysLog('检查当前是否没有库存')
                local x1, y1 = findColor(
                    area,
                    noHas,
                    95, 0, 0, 0
                )
                if x1 > -1 then
                    count = count + 1
                    mSleep(500)
                    -- 手动退出赠送窗口
                    tab(1010, 123)
                    sysLog('库存为空，手动关闭赠送窗口')
                end
            end
        end

        -- 判断是否到达赠送值
        if num ~= 0 and hasSend >= num then
            sysLog(title..'已送完，已到达设定值')
            break
        end

        if count >= 2 then
            sysLog(title..'已送完')
            break
        end

        mSleep(500)
    end

    sysLog('退出'..title..'循环')
end

return shenQi