local appName = "com.android.settings"
--local appName = "com.game.juedouzc"

r = runApp(appName)
mSleep(5 * 1000);  --等待程序响应W
sysLog(r)

flag = appIsRunning(appName) --检测应用是否在运行
sysLog(flag)

if r == 0 or flag == 1 then
	appid = frontAppName()
	sysLog(appid)
	if appid == appName then 
		dialog("已经打开"..appName, 5)
		mSleep(3000)
		closeApp(appName)
		lua_exit()
	else
		dialog("请打开 "..appName.." 再运行该脚本！", 5)
		mSleep(3000)
		lua_exit()
	end
else
    dialog("启动应用失败", 5)
end