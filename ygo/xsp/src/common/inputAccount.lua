-- 账号输入
local function inputAccount()
	local file = io.open("/mnt/sdcard/zhanghao.txt", "r")
	local account = {}
	local i = 0
	for l in file:lines() do
		i = i + 1
        account[i] = l
        mSleep(1000)
        inputText("#CLEAR#")    -- 删除输入框中的文字（假设输入框中已存在文字）
        mSleep(1000)
        inputText(account[i])   -- 输入第一个账号
        break
	end
	file:close()
end

return inputAccount