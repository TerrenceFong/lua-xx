function 冒险模式4s()  

function  经验m()
if 显示结果==1 then
  
  mSleep(ttt)
  
  keepScreen(true);
  
  colorTbl = binarizeImage({
      rect = {793,280,844,299},
      diff = {"0xc8fa96-0x101010"}
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

function 挑战4s()

挑战4x, 挑战4y = 找颜色(0x5b614a,"4|0|0xfffaf0,0|2|0x5f6550,4|2|0xfffaf0", 95, 3, 49, 954, 634)

if 挑战4x>-1 then
touchDown(1,挑战4x,挑战4y)
mSleep(100)
touchUp(1,挑战4x,挑战4y)
for sa=1,60,1 do
  mSleep(ttt)
  常用界面4s()
  if 手动中4x> -1 then
    点击(35,155)
    break
  end
end
end
end		

while true do

常用界面4s()
不常用界面4s()
mSleep(ttt)

if 输了次数~=nil and 输了次数~="" and  输了次数>=4 then  
mSleep(100)
结束()
lua_exit();
end	

if 主界面4x> -1 then
点击2(770,583)
elseif 决斗场4x> -1  then 
点击(60,30)
end
if 冒险4x> -1 then
mSleep(2*ttt)
l4x, l4y = 找颜色(0x83e2fd,"0|5|0xa9e7f8,5|5|0x79d7f5,8|7|0x0a6696", 95, 3, 50, 956, 635)
z4x, z4y = 找颜色(0xae7afd,"0|5|0xc4a4f9,3|5|0xb588f5,8|8|0x4e0791", 95, 3, 50, 956, 635)
h4x, h4y = 找颜色(0xfbe686,"-4|5|0xfbf1c7,2|5|0xf6e691,6|7|0x968e0d", 95, 3, 50, 956, 635)
if l4x > -1 then
  touchDown(1, l4x, l4y-120)
  mSleep(50)
  touchUp(1, l4x, l4y-120)
  mSleep(ttt)
  挑战4s()
elseif z4x > -1 then
  touchDown(1, z4x, z4y-120)
  mSleep(50)
  touchUp(1, z4x, z4y-120)
  mSleep(ttt)
  挑战4s()
elseif h4x > -1 then
  touchDown(1, h4x, h4y-120)
  mSleep(50)
  touchUp(1, h4x, h4y-120)
  mSleep(ttt)
  挑战4s()
else
结束()
lua_exit();
end
end

赢了4x, 赢了4y = 找颜色(0xcd8444,"29|16|0xd1d1d1,94|16|0xffffff,163|39|0x696969", 95, 704, 133, 901, 205)
输了4x, 输了4y = 找颜色(0x426a9e,"20|19|0xc8c8c8,102|-12|0xffffff,210|26|0x737373", 95, 671, 136, 911, 204) 


if  自动中4x> -1 then
mSleep(2*ttt)
elseif 赢了4x >-1 then
mSleep(100)		
经验m()
点击(479,581)
输了次数=0
elseif 输了4x >-1 then
点击(479,581)		
输了次数=输了次数+1
elseif 升级4x> -1  then  
点击(450,448)	
end


end
end

