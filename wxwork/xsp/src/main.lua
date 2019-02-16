sysLog("start")
local bb = require('badboy')
-- 打印 table
local print_r = require('utils/printTable')
local base = _G

setScreenScale(750, 1334)    --在540*960分辨率的手机中开发了脚本，要在720*1280的设备中运行 --
init("0", 0)

-- ui --

local UIRet, UIResults = showUI('ui.json')
--然后判断用户给出的返回值
if UIRet == 0 then
	--如果获取到的ret的值是0
	toast("用户按下了取消")
elseif UIRet == 1 then
	-- 如果获取到的ret的值是1
	toast("用户按下了确定")
	-- 将用户选择的值存入全局变量里 方便其他模块读取
	base.UIResults = UIResults
	
	local punch = require('views.punch')
	punch()
end

-- ui --



--dofile('device')
--dofile('systemInfo')
--dofile('text')

--OCR = require("baiduOCR.百度云OCR")
--text = OCR.文字范围(304,905,444,964)
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

--ret = getDeviceUUID()
--sysLog(string.format('当前设备UUID: %s', ret))
