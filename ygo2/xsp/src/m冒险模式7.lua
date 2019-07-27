function 冒险模式7()  

function  经验m()
if 显示结果==1 then
  
  mSleep(ttt)
  
  keepScreen(true);
  
  colorTbl = binarizeImage({
      rect = {1033,328,1093,351},
      diff = {"0xd2f9a1-0x101010"}
    })
  
  for _, row in pairs(colorTbl) do
    sysLog(table.concat(row, ','))
  end
  
  local ocr, msg = createOCR({
      type = "tesseract"
    })
  
  local code, 经验m = ocr:getText({
      data = colorTbl,
      psm = 7, -- 单个字符模式识别
      whitelist = "0123456789"
    })
  
  keepScreen(false);
  
  ocr:release()
  
  if 经验m~="" and 经验m~=nil then
    if tonumber(string.sub(经验m,2))~="" then
      经验值=经验值+tonumber(string.sub(经验m,2))
    end
  end
   jr=1 
  mSleep(200)
end
end

hideHUD(胜负)
local 输了次数=0  

function 挑战7()

挑战7x, 挑战7y = 找颜色(0xb5e070,"4|0|0xb5e070,-5|10|0xfffbf1,8|10|0xfffbf1", 95, 3, 58, 1329, 745)

if 挑战7x>-1 then
touchDown(1,挑战7x,挑战7y)
mSleep(100)
touchUp(1,挑战7x,挑战7y)
for sa=1,60,1 do
  mSleep(ttt)
  常用界面7()
  if 手动中7x> -1 then
    点击(40, 180)
    break
  end
end
end
end			

while true do

常用界面7()
不常用界面7()
mSleep(ttt)

if 输了次数~=nil and 输了次数~="" and  输了次数>=4 then  
mSleep(100)
结束()
lua_exit();
end	

if 主界面7x> -1 then
点击2(1111, 685)
elseif 决斗场7x> -1 then
点击(80, 30)
end
if 冒险7x> -1 then
mSleep(2*ttt)	
l7x, l7y = 找颜色(0xbff0fb,"8|0|0xbcecfb,3|3|0xd3f5fd,11|4|0xbde9f7", 95, 3, 58, 1329, 745) 
z7x, z7y = 找颜色(0xc8aefa,"9|0|0xa984f3,0|5|0xded0fb,9|6|0xc0a4f3", 95, 3, 58, 1329, 745) 
h7x, h7y = 找颜色(0xfdf1bc,"11|1|0xf7e89c,2|4|0xfdf3d4,10|4|0xf6ecaf", 95, 3, 58, 1329, 745)
if 	l7x > -1 then
  touchDown(1, l7x, l7y-130)
  mSleep(50)
  touchUp(1, l7x, l7y-130)
  mSleep(ttt)
  挑战7()
elseif z7x > -1 then
  touchDown(1, z7x, z7y-130)
  mSleep(50)
  touchUp(1, z7x, z7y-130)
  mSleep(ttt)
  挑战7()
elseif h7x > -1 then
  touchDown(1, h7x, h7y-130)
  mSleep(50)
  touchUp(1, h7x, h7y-130)
  mSleep(ttt)
  挑战7()
else
结束()
lua_exit();
end
end

赢了7x, 赢了7y = 找颜色(0xc3864f,"38|12|0xffffff,99|18|0x301f10,180|26|0xffffff", 95, 901, 148, 1173, 247)
输了7x, 输了7y = 找颜色(0xffffff,"81|-27|0x131a27,169|-31|0xffffff,214|-5|0x101725", 95, 900, 150, 1178, 243)

--if	手动中7x> -1 then
--  点击(40, 180)
--else
if  自动中7x> -1 then
mSleep(1000)
elseif 赢了7x >-1 then
mSleep(100)		
经验m()
点击(668,671)
输了次数=0
elseif 输了7x >-1 then
点击(668,671)		
输了次数=输了次数+1
elseif 升级7x> -1 then  
点击(665, 530)	
end


end
end

