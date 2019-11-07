local tab = require('common.tab')

local function blurAccount()
    while true do
        local x, y = findColor(
            {326, 4, 1014, 273}, 
            "0|0|0x231d48,67|3|0x313134,291|9|0x38353b,294|34|0x3a363e,570|7|0x313032,637|5|0x16100f,52|130|0xffffff,569|129|0xffffff",
            95, 0, 0, 0
        )
        if x > -1 then
            mSleep(1000)
            sysLog('取消焦点')
            tab(300, 145)
            
            mSleep(2000)
            sysLog('校验是否取消焦点成功')
            tab(300, 145)
            local x1, y1 = findColor(
                {348, 0, 986, 269}, 
                "0|0|0x352d68,29|93|0x333338,25|235|0x383939,67|241|0xffffff,566|242|0xffffff,596|152|0x323131,589|70|0x352f30,593|7|0x221821",
                95, 0, 0, 0
            )
            if x1 > -1 then
                mSleep(1000)
                sysLog('取消焦点成功')
                break
            end
        end

        mSleep(2000)
    end
end

local function focusAccount()
    while true do
        sysLog('检查是否获取到输入框的焦点')

        local x, y = findColor(
            {326, 4, 1014, 273}, 
            "0|0|0x231d48,67|3|0x313134,291|9|0x38353b,294|34|0x3a363e,570|7|0x313032,637|5|0x16100f,52|130|0xffffff,569|129|0xffffff",
            95, 0, 0, 0
        )
        if x > -1 then
            mSleep(1000)
            sysLog('清空输入框')
            inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
            break
        else
            mSleep(1000)
            sysLog('获取失败，重新获取焦点')
            tab(630, 230)
        end

        mSleep(2000)
    end
end

local function findAccount()
    while true do
        sysLog('寻找输入账号的框')

        -- local x, y = findColor(
        --     {348, 181, 986, 269}, 
        --     "0|0|0x352d68,29|93|0x333338,25|235|0x383939,67|241|0xffffff,566|242|0xffffff,596|152|0x323131,589|70|0x352f30,593|7|0x221821",
        --     95, 0, 0, 0
        -- )
        local x, y = findColor(
            {392, 180, 941, 274}, 
            "0|0|0xffffff,-6|50|0xffffff,447|-9|0xffffff,438|43|0xffffff,506|47|0xffffff",
            95, 0, 0, 0
        )
        if x > -1 then
            mSleep(1000)
            tab(630, 230)
            break
        end

        mSleep(2000)
    end
end

-- 账号输入
local function inputAccount(account)
    -- 账号输入
    local isDouYin = _G.UIResults.isDouYin
    if isDouYin == '0' then
        -- 聚焦
        mSleep(1500)
        tab(720, 345)
        mSleep(2500)
        
        -- 清空
        sysLog('清空输入框')
        inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
        mSleep(2500)

        sysLog('填入账号到输入框')
        inputText(account)
        mSleep(2500)
        -- blurAccount()
    else
        findAccount()
        mSleep(2500)
        focusAccount()
        mSleep(2500)
        sysLog('填入账号到输入框')
        inputText(account)
        mSleep(2500)
        -- blurAccount()
        sysLog('取消焦点')
        tab(300, 145)
    end
end

return inputAccount