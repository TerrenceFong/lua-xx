local function timingRunTask(global, cb, time)
    local isTimingRunTask = global.UIResults.isTimingRunTask
    if isTimingRunTask == '0' then
        sysLog('需要12点启动')

        local nowTime = os.time()
        local dateTable = os.date("*t", nowTime)
        dateTable.hour = 23
        dateTable.min = 59
        dateTable.sec = 59

        local targetTime = os.time(dateTable)
			
        local countdown = targetTime - nowTime
        print('倒计时：'..countdown)

        setTimer(countdown * 1000, function() cb() end)
        mSleep(countdown * 1000)
    else
        sysLog('不需要12点启动')

        cb()
    end
end

return timingRunTask