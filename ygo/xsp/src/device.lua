-- 打印 table
local print_r = require('utils/printTable')

local device = function(cb, isClose)
	isClose = isClose or false
	local appName = "com.demea.conur"

	local runSuccess = runApp(appName)
	mSleep(5 * 1000)  --等待程序响应W
	sysLog(runSuccess)

	local isRun = appIsRunning(appName) --检测应用是否在运行
	sysLog(isRun)

	if runSuccess == 0 or isRun == 1 then
		local appid = frontAppName()
		sysLog(appid)
		if appid == appName then
			-- toast("已经打开"..appName)
			sysLog("已经打开"..appName)
			mSleep(1000)
			-- 执行回调操作
			cb()
			-- 关闭 app
			if isClose == true then
				closeApp(appName)
			end
			-- lua_exit()
		else
			sysLog("请打开 "..appName.." 再运行该脚本！")
			mSleep(3000)
			lua_exit()
		end
	else
		sysLog("启动应用失败")
	end

	sysLog('开启应用流程结束')
end

return device
