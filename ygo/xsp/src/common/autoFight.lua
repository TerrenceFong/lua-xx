-- 自动战斗

local function autoFight()
	local successAuto = false
	while true do
		-- 检查是否为手动
		local x1, y1 = findColor(
			{0, 148, 85, 229}, 
			{
				{x=42,y=163,color=0x053468},
				{x=50,y=170,color=0x052e77},
				{x=56,y=195,color=0xecebf5},
				{x=35,y=192,color=0xb0abee},
				{x=27,y=176,color=0x072d6f}
			},
			95, 0, 0, 0
		)
		-- 检查是否为自动

		if x1 > -1 then
			touchDown(1, x1, y1)
			mSleep(100)
			touchUp(1, x1, y1)
			local id = createHUD()
			showHUD(id,"切换为自动战斗",16,"0xffff0000","msgbox_click.png",0,220,178,200,25)
			mSleep(2000)
			hideHUD(id)     --隐藏HUD
			break
--			return true
		else
--			return false
		end
		
		mSleep(2000)
	end
end

return autoFight