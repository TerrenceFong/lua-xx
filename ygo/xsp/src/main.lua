setSysConfig("isLogFile", "1")
sysLog("start")
setScreenScale(750, 1334)    --在540*960分辨率的手机中开发了脚本，要在720*1280的设备中运行 --
init("0", 1)

-- 工具库
local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local base = _G
local jueDouDaTing = require('views.jueDouDaTing')
local dianFeng = require('views.dianFeng')

-- 类型常量
local DIAN_FENG = '2'

-- ui --

local UIRet, UIResults = showUI('ui.json')
--然后判断用户给出的返回值
if UIRet == 0 then
	--如果获取到的ret的值是0
	toast("用户按下了取消")
elseif UIRet == 1 then
	--如果获取到的ret的值是1
	-- toast("用户按下了确定")
	print_r(UIResults)
	-- 将用户选择的值存入全局变量里 方便其他模块读取
	base.UIResults = UIResults
	local type = UIResults.ygoType
	
	if type == DIAN_FENG then
		dianFeng()
	else
		jueDouDaTing()
	end
end

-- ui --

--point = findColors({459, 842, 523, 910}, 
--{
--	{x=0,y=0,color=0xa4afc4},
--	{x=28,y=3,color=0x6767d5},
--	{x=1,y=28,color=0xe1efe0},
--	{x=23,y=28,color=0xfcdb7c}
--},
--95, 0, 0, 0)
--if #point ~= 0 then
--	touchDown(1, 500, 870)
--	mSleep(50)
--	touchUp(1, 150, 870)  
--end

--dofile('device')
--dofile('systemInfo')
--dofile('text')

--OCR = require("baiduOCR.百度云OCR")
--text = OCR.文字范围(658,152,1169,242)
--sysLog(text)

--print_r(table)

bb.loadluasocket()
local http = bb.http

-- get 实例
--local response_body = {}
--local res, code, h = http.request {
--	url     = "http://api.nnzhp.cn/api/user/stu_info?stu_name=1",
--	method  = "GET",
--	sink    = ltn12.sink.table(response_body)
--}
--print_r(res)
--print_r(code)
--print_r(response_body)

--r, e = http.request("http://api.nnzhp.cn/api/user/stu_info?stu_name=1")
--print_r(r)
--print_r(e)

-- post 实例
--local post_data = "TransCode=020111&asdf=2222&sing[aaa]=333"
--local response_body = {}
--local res, code, h = http.request {
--	url     = "http://test.ngrok.fffffbw.cn/api/testpost?a=1",
--	method  = "POST",
--	headers = {
--		['Content-Type']   = 'application/x-www-form-urlencoded',
--		['Content-Length'] = #post_data,
--	},
--	source  = ltn12.source.string(post_data),
--	sink    = ltn12.sink.table(response_body)
--}
--print_r(code)
--print_r(response_body)

--width,height = getScreenSize()
--sysLog(width)
--sysLog(height)
