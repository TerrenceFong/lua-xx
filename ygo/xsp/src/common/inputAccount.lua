local tab = require('common.tab')

-- 账号输入
local function inputAccount(account)
	sysLog('获取输入框焦点')
	tab(630, 230)
    mSleep(1000)
    sysLog('清空输入框')
    inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
    mSleep(1000)
    sysLog('填入账号到输入框')
    inputText(account)
    mSleep(1000)
    sysLog('隐藏输入法')
    tab(1230, 390)
end

return inputAccount