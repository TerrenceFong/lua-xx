function 冒险模式ipad()  

function  经验m()
if 显示结果==1 then
  
  mSleep(ttt)
  
  keepScreen(true);
  
  colorTbl = binarizeImage({
      rect = {1776,672,1898,718},
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

--hideHUD(胜负)
local 输了次数=0  

function 挑战p()

挑战px, 挑战py = 找颜色(0xfffaf0,"0|37|0xfffaf0,54|0|0xfffaf0,54|17|0xfffaf0,55|37|0xfffaf0,70|30|0x487702", 95, 8, 122, 2040, 1531)

if 挑战px>-1 then
touchDown(1,挑战px,挑战py)
mSleep(100)
touchUp(1,挑战px,挑战py)
for sa=1,60,1 do
  mSleep(ttt)
  常用界面ipad()
  if 手动中px> -1 then
    点击(50,360)
    break
  end
end
end
end	

while true do

常用界面ipad()
不常用界面ipad()
mSleep(ttt)

if 输了次数~=nil and 输了次数~="" and  输了次数>=4 then  
mSleep(100)
结束()
lua_exit();
end	

if 主界面px> -1 then
点击2(1600,1400)
elseif 决斗场px> -1 then
点击(140,60)
end
if 冒险px> -1 then
mSleep(2*ttt)	
lpx, lpy = 找颜色(0x5fdcfc,"20|1|0x35cff4,-2|16|0xabe9fa,19|15|0x62d3f5,23|25|0x0a679a", 95, 3, 123, 2041, 1528)
zpx, zpy = 找颜色(0xae76fe,"24|0|0x893bfb,-1|13|0xc9a9fb,17|12|0xa468f5,23|19|0x4f0597", 95, 3, 123, 2041, 1528)
hpx, hpy = 找颜色(0xfce579,"23|-1|0xfad63d,-1|13|0xf9eca9,17|12|0xf5de68,21|20|0x938c06", 95, 3, 123, 2041, 1528)
if lpx > -1 then
  touchDown(1, lpx, lpy-260)
  mSleep(50)
  touchUp(1, lpx, lpy-260)
  mSleep(ttt)
  挑战p()
elseif zpx > -1 then
  touchDown(1, zpx, zpy-260)
  mSleep(50)
  touchUp(1, zpx, zpy-260)
  mSleep(ttt)
  挑战p()
elseif hpx > -1 then
  touchDown(1, hpx, hpy-260)
  mSleep(50)
  touchUp(1, hpx, hpy-260)
  mSleep(ttt)
  挑战p()
else
break
---结束()
--lua_exit();
end
end

赢了px, 赢了py = 找颜色(0xcc7f3a,"40|-7|0xffffff,94|25|0x010101,150|26|0xffffff,186|38|0xcd782e,249|42|0xcd772e,318|62|0x38220e", 95, 1580, 307, 2041, 495)
输了px, 输了py = 找颜色(0x446ca1,"70|10|0x40679d,133|27|0xffffff,236|63|0x030303,386|17|0x3b669c,416|17|0xffffff,454|33|0x000001", 95, 1499, 314, 2043, 489) 

--if	手动中px> -1 then
--  点击(50,360)
-- else
if  自动中px> -1 then
mSleep(2*ttt)
elseif 赢了px >-1 then
mSleep(100)		
经验m()
点击(1000,1350)
输了次数=0
elseif 输了px >-1 then
点击(1000,1350)		
输了次数=输了次数+1
elseif 升级px> -1 then
点击(1020,1090)
end


end
end

