function 冒险模式5s()  

function  经验m()
if 显示结果==1 then
  
  mSleep(ttt)
  
  keepScreen(true);
  
  colorTbl = binarizeImage({
      rect = {879,280,932,299},
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

function 挑战()

挑战x, 挑战y = 找颜色(0x598c0c,"0|-34|0xb9eb76,0|-89|0x607394,1|-101|0x95a1b8,1|-112|0xf5f7f8", 95, 2, 49, 1130, 635)

if 挑战x>-1 then
touchDown(1,挑战x,挑战y)
mSleep(100)
touchUp(1,挑战x,挑战y)
for sa=1,60,1 do
  mSleep(ttt)
  常用界面5s()
  if 手动中x> -1 then
    点击(23,146)
    break
  end
end
end
end		

while true do

常用界面5s()
不常用界面5s()
mSleep(ttt)

if 输了次数~=nil and 输了次数~="" and  输了次数>=4 then  
mSleep(100)
结束()
lua_exit();
end	

if 主界面x> -1 then
点击2(950,590)
elseif 决斗场x> -1  then 
点击(70,30)
end
if 冒险x> -1 then
mSleep(2*ttt)
-- 点击(330,16)
lx, ly = 找颜色(0x81e3fc,"-4|6|0xcaf5fd,5|6|0x81daf8,-6|10|0xacf5fc,5|10|0x1477a7", 95, 4, 49, 1133, 635)
zx, zy = 找颜色(0xb383fc,"0|3|0xc29efb,0|5|0xc9a9fa,0|8|0x7423d9,0|11|0x7322df", 95, 3, 52, 1136, 638)
hx, hy = 找颜色(0xfbf1ba,"5|0|0xf6e58d,0|3|0xe9cf46,3|3|0xceb81a,2|6|0xdbc327", 95, 3, 52, 1136, 638)
if lx > -1 then
  touchDown(1, lx, ly-130)
  mSleep(50)
  touchUp(1, lx, ly-130)
  mSleep(ttt)
  挑战()
elseif zx > -1 then
  touchDown(1, zx, zy-130)
  mSleep(50)
  touchUp(1, zx, zy-130)
  mSleep(ttt)
  挑战()
elseif hx > -1 then
  touchDown(1, hx, hy-130)
  mSleep(50)
  touchUp(1, hx, hy-130)
  mSleep(ttt)
  挑战()
else
结束()
lua_exit();
end
end

赢了x, 赢了y = 找颜色(0xcc7e3a,"25|5|0xaeaeae,91|16|0xfdfdfd,158|31|0xb4b4b4", 95, 800, 135, 988, 203)
输了x, 输了y = 找颜色(0x40679e,"15|0|0xffffff,52|2|0x05090d,100|3|0xffffff,131|2|0xffffff,162|-3|0x121c2a,194|2|0xffffff", 95, 764, 134, 1001, 203) 

-- if	手动中x> -1 then
--   点击(23,146)
-- else

if  自动中x> -1 then
mSleep(2*ttt)
elseif 赢了x >-1 then
mSleep(100)		
经验m()
点击(570,580)
输了次数=0
elseif 输了x >-1 then
点击(570,580)		
输了次数=输了次数+1
elseif 升级x> -1  then  
点击(530,445)	
end


end
end

