-- 登录操作

local function comfirm()
    -- while true do
    --     local x, y = findColor(
    --         {394, 475, 905, 724}, 
    --         "0|0|0xc1c1c6,-4|61|0x8d8e92,219|-1|0xc5c8ce,218|60|0x8c8d90,112|5|0xc1ee83,111|28|0x72b319,108|50|0x528506,138|35|0xe0eac9,273|-69|0x00ff00",
    --         95, 0, 0, 0
    --     )
    --     if x > -1 then
    --         点击(660, 660)
    --         break
    --     end

    --     mSleep(2000)
    -- end
    mSleep(1000)
    点击(660, 660)
    mSleep(2000)
end

local function checkAnnouncement()
    sysLog('公告校验')
    local announcementCount = 0

    while true do
        local x, y = findColor(
            {268, 69, 1060, 679}, 
            "0|0|0x9298bc,-16|16|0x9296b9,-8|543|0x999ab9,728|5|0xe4ae85,727|545|0x7a7e94,154|-5|0x41444f,485|0|0x568ff9,408|-2|0x0054cb,362|1|0xffc800",
            85, 0, 0, 0
        )
        if x > -1 then
            点击(1015, 115)
            break
        end

        if announcementCount >= 10 then
            sysLog('公告校验退出')
            点击(1015, 115)
            break
        else
            announcementCount = announcementCount + 1
        end

        mSleep(2000)
    end

    点击(1015, 115)
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
            点击(670, 550)
            checkAnnouncement()
            comfirm()
            break
        end

        mSleep(2000)
    end
end

return login