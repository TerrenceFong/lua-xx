function 无限战斗5s()  

function  经验()
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
  
  local code, 经验w = ocr:getText({
      data = colorTbl,
      psm = 7, -- 单个字符模式识别
      whitelist = "0123456789"
    })
  
  keepScreen(false);
  
  ocr:release()
  
  if 经验w~="" and 经验w~=nil then
    if tonumber(string.sub(经验w,2))~="" and tonumber(string.sub(经验w,2))>0 then
      经验值=经验值+tonumber(string.sub(经验w,2))
    end
  end
	jr=1  
  mSleep(200)
end
end

function  在线领奖5s()
mSleep(2*ttt)
if  领奖场次>=15 and  在线领奖次数>=1  then
mSleep(2*ttt)
点击(60,20)
mSleep(2*ttt)
点击(540,160) --清除每日任务
mSleep(2*ttt)
点击(1095,85) 
mSleep(2*ttt)
点击(805,540) 
mSleep(2*ttt)
点击(845,235) 
mSleep(2*ttt)
点击(570,590)   --返回
mSleep(2*ttt)
点击(950,50)
在线领奖次数=在线领奖次数-1
领奖场次=0
end 
end

while true do

--hb = getNetTime()
--hb2=hb%1800
--if  hb2>1794 and hb2<1800 then
--for hongbao=1,200,1 do
--红包(620,300)
--end
--end

电()
常用界面5s()
不常用界面5s()
mSleep(ttt) 

if 胜>=设置胜场 then  
mSleep(100)
可领奖5s()
可领奖=0
mSleep(ttt)
if 转上分==1 then
require("s上分模式5s")	
  上分模式5s()
end	
if 可冒险==1 then
require("m冒险模式5s")
  冒险模式5s()
end
结束()
lua_exit();
end

if 主界面x> -1 then
点击2(800,300)
elseif 决斗场x> -1 and 可手动==1 then
点击(600,470)
mSleep(2*ttt)
for xx=1,60,1 do
  mSleep(ttt)
  常用界面5s()
  if 手动中x> -1 then
    点击(23,146)
    break
  end
end
elseif 决斗场x> -1 and 可手动==0 then
点击(600,470)
elseif 手动中x> -1 and 可手动==0 then
点击(23,146)
elseif 自动中x> -1 then
mSleep(3*ttt) -- 点击(10,220)
elseif 胜利x> -1 then 
mSleep(ttt/2)
经验()
点击(350,565)
领奖场次=领奖场次+1
连s=连s+1
胜=胜+1
if 显示结果==1 then 
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,350,20)
else
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖5s()
elseif 失败x> -1 then 
点击(350,565)	
领奖场次=领奖场次+1
连胜数统计()
负=负+1
if 显示结果==1 then 
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,350,20)
else
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖5s()		
elseif 平局x> -1 then 
点击(350,565)
领奖场次=领奖场次+1
平=平+1		
if 显示结果==1 then 
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,350,20)
else
  showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖5s()
elseif 零点重置x> -1 then
胜= 0
负= 0
平= 0
领奖场次=0
在线领奖次数=5
点击2(570,370)
end

少用界面5s()
防闪退5s()
end
end