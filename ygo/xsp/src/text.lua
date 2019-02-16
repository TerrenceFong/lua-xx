local ocr, msg = createOCR({
	psm = 10,
    type = "tesseract", -- 指定tesseract引擎
    path = "[external]", -- 使用开发助手/叉叉助手的扩展字库，不填默认使用eng字库路径
    lang = "chi_sim" -- 使用英文增强字库(注意需要提前下载好)
})

if ocr ~= nil then
    -- ocr 创建成功，使用该实例进行后续识别操作（参见下面函数文档）
    sysLog("createOCR succeed: Tesseract-OCR v" .. msg)
	
	string.trim = function(s)
        return s:match'^%s*(.*%S)' or ''
    end
	
	local code, text = 0, ""
    mSleep(1000)
	code, text = ocr:getText({
        rect = {227,38,342,77},
--		rect = {301,62,446,108},
        diff = {"0xffffff-0x444444"}
    })
	
	sysLog("code = " .. tostring(code) .. ", text = " .. text)
	
	-- ocr使用完毕，为避免内存峰值过高导致被系统强杀(主要是使用到字库较大的情况下)
	-- 建议及时手动释放ocr
	ocr:release()
else
    -- ocr 创建失败，根据msg提示调整
    sysLog("createOCR failed: " .. tostring(msg))
end