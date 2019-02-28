local tab = require('common.tab')

-- 登录操作

local function comfirm()
    while true do
        local x, y = findColor(
            {394, 475, 905, 724}, 
            "0|0|0xc1c1c6,-4|61|0x8d8e92,219|-1|0xc5c8ce,218|60|0x8c8d90,112|5|0xc1ee83,111|28|0x72b319,108|50|0x528506,138|35|0xe0eac9,273|-69|0x00ff00",
            95, 0, 0, 0
        )
        if x > -1 then
            tab(660, 660)
            break
        end

        mSleep(2000)
    end
end

local function login(cb)
    sysLog('登录校验')
    mSleep(1000)

    while true do
        sysLog('检测登录页面中')

        keepScreen(true)
        local x, y = findColor(
            {389, 174, 942, 570}, 
            "0|0|0xffffff,-2|130|0xffffff,1|314|0x00cc66,505|308|0x00cc66,492|147|0xc8cac8,483|147|0xffffff,254|335|0x00cc66,-21|-19|0x353636",
            95, 0, 0, 1
        )
        keepScreen(false)

        if x > -1 then
            sysLog('找到登录页面，准备后续登录操作')
            if (type(cb) == 'function') then
                sysLog('开始切换账号')
                cb()
            end
            mSleep(1500)
            sysLog('准备点击登录')
            tab(670, 522)
            comfirm()
            break
        end

        mSleep(2000)
    end
end

return login