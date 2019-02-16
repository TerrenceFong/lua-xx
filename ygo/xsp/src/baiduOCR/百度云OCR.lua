--[[该源码由叉叉论坛作者[卡其色]提供]]
require("baiduOCR/百度云Base64编码")
require("baiduOCR/百度云认证作者")

local bb   = require("badboy")
local json = bb.getJSON()
bb.loadluasocket()

local baiduOCR = {}

local function snapshotRead(x1, y1, x2, y2)
	local filename = '[public]ocr.png'
	snapshot(filename, x1, y1, x2, y2)
	local file = io.open(filename, 'r')
	local retbyte = file:read("*a")
	file:close()
	return retbyte
end

local function urlEncode(s)
	s = string.gsub(s, "([^%w%.%- ])", function(c)
			return string.format("%%%02X", string.byte(c))
		end)
	return (string.gsub(s, " ", "+"))
end

local function has_key(search, t)
	local  t = t or nil
	if type(t) == "table" then
		for k, v in pairs(t) do
			if k == search then
				return true
			end
		end
	end
	return false
end

function baiduOCR.文字范围(x1, y1, x2, y2)
	local imgRaw    = snapshotRead(x1, y1, x2, y2)
	local imgBase64 = Base64.encode(imgRaw)
	local imgData   = urlEncode(imgBase64)
	
	if imgData == nil or #imgData <= 0 then return "" end
	
	local http = bb.http
	local params = {}
	local response_body = {}
	local post_data = 'image='..imgData
	local method    = "POST"
	local url       = 'https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic'
	local path      = '/rest/2.0/ocr/v1/accurate_basic'
	local headers = {
		['host']           = 'aip.baidubce.com',
		['Content-Type']   = 'application/x-www-form-urlencoded',
		['Content-Length'] = #post_data,
	}
	
	local sign = sign(method, path, headers, params)
	headers['Authorization'] = sign
	
	local res, code = http.request {
		url     = url,
		method  = method,
		headers = headers,
		source  = ltn12.source.string(post_data),
		sink    = ltn12.sink.table(response_body)
	}
	
	-- 默认仅返回第一组数据，请根据实际需要修改
	if res == 1 and #response_body > 0 then
		local data = json.decode(response_body[1])
		if has_key('words_result', data) and #data['words_result'] > 0 then
			local text = data['words_result'][1]['words']
			return text
		end
	end
	
	return ""
end

return baiduOCR