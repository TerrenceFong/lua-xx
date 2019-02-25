-- 打印 table
local print_r = require('utils/printTable')

local device = function(cb)
	local appName = "com.demea.conur"

	runSuccess = runApp(appName)
	mSleep(5 * 1000)  --等待程序响应W
--	sysLog(runSuccess)

	isRun = appIsRunning(appName) --检测应用是否在运行
	sysLog(isRun)

	if runSuccess == 0 or isRun == 1 then
		appid = frontAppName()
		sysLog(appid)
		if appid == appName then
			-- toast("已经打开"..appName)
			print("已经打开"..appName)
			mSleep(1000)
			-- 执行回调操作
			cb()
			closeApp(appName)
			lua_exit()
		else
			toast("请打开 "..appName.." 再运行该脚本！")
			mSleep(3000)
			lua_exit()
		end
	else
		toast("启动应用失败")
	end
end

return device
