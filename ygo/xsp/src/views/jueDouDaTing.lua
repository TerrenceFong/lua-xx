-- 决斗大厅

local autoFight = require('common.autoFight')

local SUCCESS = '0'
local FAIL = '1'

local function returnPage()
	local x, y = findColor(
		{591, 643, 742, 718}, 
		{
			{x=615,y=666,color=0xace362},
			{x=658,y=663,color=0xb5e96e},
			{x=658,y=681,color=0xfcf7ed},
			{x=674,y=683,color=0x525c3f},
			{x=688,y=694,color=0x4e8102},
			{x=712,y=691,color=0x4d8102}
		},
		95, 0, 0, 0
	)
	if x > -1 then
		touchDown(1, x, y)
		mSleep(100)
		touchUp(1, x, y)
	end
end

local function start()
	local x, y = findColor(
		{667, 662, 862, 738}, 
		{
			{x=692,y=679,color=0xbcee7b},
			{x=720,y=678,color=0xbfee7b},
			{x=752,y=679,color=0xbdee7b},
			{x=804,y=679,color=0xbdee7b},
			{x=703,y=698,color=0x78b91e},
			{x=748,y=699,color=0xf3efe4},
			{x=769,y=699,color=0xbfbfaf},
			{x=782,y=699,color=0xfffaf0},
			{x=816,y=699,color=0x74b51a}
		},
		95, 0, 0, 0
	)
	if x > -1 then
		touchDown(1, x, y)
		mSleep(100)
		touchUp(1, x, y)
	end
end

local function failTask()
	local isFinish = false
	while true do
		autoFight()
		
		mSleep(10000)
		
--		while true do
--			local x, y = findColor(
--				{349, 129, 1158, 588}, 
--				{
--					{x=405,y=153,color=0x00393a},
--					{x=510,y=171,color=0x46abb7},
--					{x=581,y=171,color=0x68c0cd},
--					{x=644,y=170,color=0x95abc0},
--					{x=708,y=173,color=0x92a8be},
--					{x=890,y=201,color=0x456a9d},
--					{x=497,y=252,color=0xfbfc4d},
--					{x=592,y=246,color=0xfeff60},
--					{x=450,y=364,color=0xbcc78f},
--					{x=453,y=500,color=0xbc6940}
--				},
--				95, 0, 0, 0
--			)
--			if x > -1 then
--				returnPage()
--				break
--			end
--		end
	
		if isFinish == true then
			break
		end
	end
	print('fail finish')
end

local function successTask(targetTimes)
	local isFinish = false
	local times = 0
	if (targetTimes == "") then
		targetTimes = 100
	else
		targetTimes = tonumber(targetTimes)
	end

	while true do
		start()
		
		mSleep(1000)
	
		autoFight()
		
		mSleep(1000)
		
		while true do
			local x, y = findColor(
				{349, 129, 1158, 588}, 
				{
					{x=403,y=155,color=0xfddb88},
					{x=443,y=169,color=0xc8e2e6},
					{x=565,y=198,color=0x23b1f8},
					{x=630,y=200,color=0xbbd6e0},
					{x=749,y=213,color=0xffaa31},
					{x=826,y=226,color=0xcc7223},
					{x=648,y=352,color=0x9b0606},
					{x=509,y=379,color=0x7c7b77},
					{x=422,y=404,color=0x4f3325}
				},
				95, 0, 0, 0
			)
			if x > -1 then
				returnPage()
				times = times + 1
				break
			else
				mSleep(5000)
			end
		end
		
		mSleep(1000)
		print('胜利次数：'..times)
		if times == targetTimes then
			isFinish = true
		end

		if isFinish == true then
			break
		end
		
		mSleep(1000)
	end
	print('success finish')
end

-- type
-- 1 胜利
-- 2 失败
local function jueDouDaTing(type, times)
	if (type == FAIL) then
		failTask()
	elseif (type == SUCCESS) then
		successTask(times)
	end
end

return jueDouDaTing