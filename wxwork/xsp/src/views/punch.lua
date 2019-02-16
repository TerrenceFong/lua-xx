local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local device = require('device')
local OCR = require("baiduOCR.百度云OCR")

bb.loadluasocket()
bb.loaduilib()
local http = bb.http
local json = bb.getJSON()

local DA_KA = '0'
local TONG_JI = '1'

local HUD = createHUD()
--			hideHUD(id)     --隐藏HUD

local wxPunchType = _G.UIResults.wxPunchType
sysLog('wxPunchType: '..wxPunchType)

-- 获取 uuid
local uuid = getDeviceUUID()
sysLog('uuid: '..uuid)
--uuid = "test"

-- 记录打卡数据
local postPunchData = function()
	local getNow = os.date("%Y-%m-%d", os.time())
	local post_data = "uuid="..uuid.."&date="..getNow
	local response_body = {}
	local res, code, h = http.request {
		url     = "http://wx.ngrok.fffffbw.cn/api/wxpunch",
		method  = "POST",
		headers = {
			['Content-Type']   = 'application/x-www-form-urlencoded',
			['Content-Length'] = #post_data,
		},
		source  = ltn12.source.string(post_data),
		sink    = ltn12.sink.table(response_body)
	}
	
	local result = json.decode(response_body[1])
	local success, message = result.success, result.message
	print_r(result)

	if success == true then
		dialog(message, 0)
		mSleep(2000)
	end
end

local punchIn = function()
	showHUD(HUD, "开始上班打卡", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
end

local punchOut = function()
	showHUD(HUD, "开始下班打卡", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
end

local startPunch = function()
	showHUD(HUD, "开始打卡", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
	while true do
		local x, y = findColor(
			{186, 291, 561, 653}, 
			{
				{x=373,y=303,color=0xffffff},
				{x=363,y=330,color=0xfec567},
				{x=326,y=421,color=0xffffff},
				{x=362,y=463,color=0xffffff},
				{x=392,y=435,color=0xffffff},
				{x=434,y=391,color=0xffffff},
				{x=342,y=603,color=0x569113},
				{x=438,y=600,color=0x569113},
				{x=452,y=599,color=0x569113}
			},
			95, 0, 0, 0
		)
		if x > -1 then
			showHUD(HUD, "开始上报数据", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
			mSleep(300)
			postPunchData()
			break
		end
	end
end

--local checkPunchStatus = function()
--	showHUD(HUD, "识别打卡状态(上班/下班)", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
--	mSleep(300)
--	print('开始时间：'..os.date("%Y-%m-%d %X", os.time()))
--	local punchStatus = OCR.文字范围(306,909,439,959)
--	sysLog(punchStatus)
--	print('结束时间：'..os.date("%Y-%m-%d %X", os.time()))
--	showHUD(HUD, "识别打卡状态成功！", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
--	if punchStatus == '上班打卡' then
--		punchIn()
--	elseif punchStatus == '下班打卡' then
--		punchOut()
--	end
--end

local checkPunchStatus = function()
	showHUD(HUD, "检查是否准备打卡", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
	while true do
		local x, y = findColor(
			{132, 289, 610, 1076}, 
			{
				{x=352,y=345,color=0x6bb31c},
				{x=358,y=354,color=0xffffff},
				{x=371,y=359,color=0x6bb31c},
				{x=381,y=369,color=0xffffff},
				{x=365,y=432,color=0x569112},
				{x=393,y=438,color=0x569112},
				{x=376,y=496,color=0x569112},
				{x=375,y=744,color=0xfec567},
				{x=373,y=858,color=0x4f3c1e},
				{x=396,y=934,color=0x52422a},
				{x=415,y=946,color=0x52422a}
			},
			95, 0, 0, 0
		)
		if x > -1 then
			local randomX, randomY = math.random(0, 120), math.random(0, 120)
			touchDown(1, 325 + randomX, 840 + randomY)
			mSleep(50)
			touchUp(1, 325 + randomX, 840 + randomY)
	
			startPunch()
			break
		end
	end
end

local findPunch = function()
	showHUD(HUD, "开始寻找打卡位置", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
	local x, y = findColor(
		{33, 168, 714, 557}, 
		{
			{x=108,y=207,color=0xfdb205},
			{x=108,y=211,color=0xffffff},
			{x=108,y=222,color=0xfdb205},
			{x=107,y=229,color=0xfdb205},
			{x=107,y=239,color=0xffffff},
			{x=108,y=258,color=0xfff7e6},
			{x=108,y=259,color=0xfecf64},
			{x=123,y=240,color=0xfed77e},
			{x=95,y=241,color=0xffffff}
		},
		95, 0, 0, 0
	)
	if x > -1 then
		showHUD(HUD, "寻找打卡位置成功！", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
		local randomX, randomY = math.random(0, 20), math.random(0, 20)
		touchDown(1, x + randomX, y + randomY)
		mSleep(50)
		touchUp(1, x + randomX, y + randomY)
		mSleep(500)
		checkPunchStatus()
	end
end

local findWorkSpace = function()
	showHUD(HUD, "开始寻找工作台", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
	local x1, y1 = findColor(
		{418, 1237, 518, 1332}, 
		{
			{x=449,y=1253,color=0x878b91},
			{x=466,y=1252,color=0x878b91},
			{x=472,y=1252,color=0x878b91},
			{x=490,y=1252,color=0x92959b},
			{x=449,y=1292,color=0x878b91},
			{x=466,y=1292,color=0x878b91},
			{x=472,y=1292,color=0x878b91},
			{x=488,y=1292,color=0x878b91},
			{x=468,y=1315,color=0xe5e5e6}
		},
		95, 0, 0, 0
	)
	if x1 > -1 then
		showHUD(HUD, "寻找工作台成功！", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
		local randomX, randomY = math.random(15, 30), math.random(15, 30)
		touchDown(1, x1 + randomX, y1 + randomY)
		mSleep(50)
		touchUp(1, x1 + randomX, y1 + randomY)
		mSleep(500)
		findPunch()
	end
end

-- 判断当前设备是否 loading 完成
local checkAppIsReady = function()
	showHUD(HUD, "检查app是否准备完成", 20, "0xffff0000", "msgbox_click.png", 0, 210, 30, 400, 25)
	mSleep(300)
	while true do
		local x, y = findColor(
			{239, 50, 505, 116}, 
			{
				{x=318,y=69,color=0x4b77b0},
				{x=346,y=71,color=0xffffff},
				{x=363,y=71,color=0xffffff},
				{x=369,y=72,color=0xffffff},
				{x=393,y=67,color=0xf4f6fa},
				{x=405,y=73,color=0xffffff},
				{x=421,y=83,color=0x4b77b0},
				{x=409,y=95,color=0xffffff},
				{x=356,y=98,color=0xffffff}
			},
			95, 0, 0, 0
		)

		if x > -1 then
			findWorkSpace()
			break
		end
		
		mSleep(500)
	end
end

local punch = function()
	if wxPunchType == DA_KA then
		device(function()
			checkAppIsReady()
		end)
	elseif wxPunchType == TONG_JI then
		local response_body = {}
		local res, code, h = http.request {
			url     = "http://wx.ngrok.fffffbw.cn/api/wxpunch/"..uuid,
			method  = "GET",
			sink    = ltn12.sink.table(response_body)
		}

		local info = ''

		for k, v in ipairs(json.decode(response_body[1])) do
			info = info..v..'\n\n'
		end
		
		local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 660, height = 600})
		local page = Page:create("page")
		page.text = "打卡时间统计"
		local label = Label:create("Label", {color = "0, 0, 225", size = 30, text = info})
		
		rootview:addView(page)    --把page添加到rootview
		page:addView(label)       --把label添加到page
		
		uijson = json.encode(rootview)
		showUI(uijson)
	end
end

return punch