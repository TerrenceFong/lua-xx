function 上分模式4s()  --5s图片参数 可认输
	require("m冒险模式4s")
function  经验()
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

function  法老遗产4s()

colorTbl = binarizeImage({
  rect = {495,17,548,35},
  diff = {"0xfffaf0-0x202020"}
})

for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end

local ocr, msg = createOCR({
  type = "tesseract"
})

local code, 分值4s = ocr:getText({
  data = colorTbl,
  psm = 7, -- 单个字符模式识别
  whitelist = "0123456789"
})

ocr:release()

local 数字4s=tonumber(分值4s)

if  数字4s~=nil then
if 数字4s >= 设置上分分数  then
  mSleep(100)
  可领奖4s()
  mSleep(ttt)
  if 可冒险==1 then

    冒险模式4s()
  end
  结束()
  lua_exit();
end
end
end

function  在线领奖4s()
mSleep(2*ttt)
if  领奖场次>=15 and  在线领奖次数>=1  then
mSleep(2*ttt)
点击(60,30)
mSleep(2*ttt)
点击(418,169) --清除每日任务
mSleep(2*ttt)
点击(915,87) 
mSleep(2*ttt)
点击(720,530) 
mSleep(2*ttt)
点击(760,235) 
mSleep(2*ttt)
在线领奖次数=在线领奖次数-1
领奖场次=0
end 
end

while true do
电()
常用界面4s()
不常用界面4s()
mSleep(ttt)


if 主界面4x> -1 then
点击2(690,300)
elseif 决斗场4x> -1 and 可手动==1  then
mSleep(2*ttt)
法老遗产4s()
点击(580,490)
for xx=1,60,1 do
mSleep(ttt)
常用界面4s()
if 手动中4x> -1 then
  点击(35,155)
  break
end
end
elseif 决斗场4x> -1 and 可手动==0  then
mSleep(ttt)
法老遗产4s()
点击(580,490)
elseif 手动中4x> -1 and 可手动==0 then
点击(35,155)
elseif 自动中4x>-1  then
mSleep(3*ttt)--    点击(10,220)
elseif 胜利4x>-1  then 
mSleep(ttt)
经验()
点击(310,580)
领奖场次=领奖场次+1
连s=连s+1
胜=胜+1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,350,15)
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖4s()
elseif 失败4x> -1 then 
点击(310,580)
领奖场次=领奖场次+1
连胜数统计()
负=负+1	
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,350,15)
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖4s()		
elseif 平局4x> -1 then
点击(310,580)	
领奖场次=领奖场次+1
平=平+1	
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,350,15)
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end
在线领奖4s()
elseif 零点重置4x> -1 then
胜= 0
负= 0
平= 0
领奖场次=0
在线领奖次数=5
点击2(473,366)
end

少用界面4s()
防闪退4s()
end
end