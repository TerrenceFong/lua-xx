-- 自动战斗

local function autoFight(cb)
	local successAuto = false
	local count = 0

	while true do
		if (type(cb) == 'function') then
			sysLog('检测自动战斗中')
			cb()
		end

		-- 检查是否为手动
		local x1, y1 = findColor(
			{2, 149, 82, 226}, 
			"0|0|0xc2bef0,0|-32|0xc0f3fd,25|-15|0xc7d7d0,26|27|0xfceaaa,-25|26|0xfceaaa,-26|-15|0xd6ffff,-12|-20|0xfefefe,9|-16|0x012760,11|7|0xf6f5fd",
			85, 0, 0, 0
		)
		-- 检查是否为自动

		if x1 > -1 then
			touchDown(1, x1, y1)
			mSleep(50)
			touchUp(1, x1, y1)
			local id = createHUD()
			showHUD(id,"切换为自动战斗",16,"0xffff0000","msgbox_click.png",0,220,178,200,25)
			mSleep(2000)
			hideHUD(id)     --隐藏HUD
			sysLog('切换为自动战斗成功')
			break
--			return true
		else
--			return false
		end

		if count >= 20 then
            sysLog('检测自动战斗--超时退出循环')
            break
        else
            count = count + 1
        end

		mSleep(2000)
	end
end

return autoFight