function 连胜模式4s()  --5s图片参数 可认输
require("s上分模式4s")
local 失败定值=0
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


function  断连胜值()

mSleep(ttt)

keepScreen(true);

colorTbl = binarizeImage({
rect = {530,391,560,408},
diff = {"0xc7f996-0x202020","0xc7f895-0x202020"}
})

for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end

local ocr, msg = createOCR({
type = "tesseract"
})

local code, 断连胜w = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})

keepScreen(false);

ocr:release()

断胜利定值=tonumber(断连胜w)

mSleep(200)

end


while true do
电()
常用界面4s()
不常用界面4s()
mSleep(ttt)  

if 胜>=设置胜场 then   --假如胜利场数达到UI里面设置的胜场数
mSleep(100)
可领奖4s()
可领奖=0
mSleep(ttt)
if 转上分==1 then

上分模式4s()
end	
if 可冒险==1 then

冒险模式4s()
end
结束()
lua_exit();
end


function  法老遗产4s()

mSleep(ttt)

keepScreen(true);

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

keepScreen(false);

ocr:release()

数字4s=tonumber(分值4s)

mSleep(100)

end

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

function 降分()

while true do 
电()
常用界面4s()
不常用界面4s()
mSleep(ttt) 

if 主界面4x> -1 then
点击2(690,300)
elseif 决斗场4x> -1 then
mSleep(ttt)
法老遗产4s()
if  数字4s~=nil and  数字4s~="" and 数字4s<=连胜降分分数 then
点击(580,490)
失败定值=0
mSleep(ttt)
return(失败定值)
end
点击(580,490)
mSleep(2*ttt)
for xs=1,80,1 do
mSleep(ttt)
常用界面4s()
if 手动中4x> -1  then
  点击(36, 97)
  mSleep(700)		
  点击2(260, 97)
  点击2(555,370)
	mSleep(3000)	
  break
end
end
elseif 手动中4x> -1  then
点击(36, 97)
mSleep(700)		
点击2(260, 97)
点击2(555,370)	
elseif  胜利4x> -1  then
mSleep(ttt)
经验()
点击(310,580)
胜=胜+1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
end
elseif 失败4x> -1 then
点击(310,580)
elseif 平局4x> -1 then
点击(310,580)
elseif 零点重置4x> -1 then
胜= 0
负= 0
平= 0
领奖场次=0
在线领奖次数=5
点击(473,366)
end

少用界面4s()
防闪退4s()
end
end
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
if 主界面4x> -1 then
点击2(690,300)
end
if 决斗场4x> -1  and 可手动==1 then
mSleep(ttt)
断连胜值()
if 断胜利定值~=nil and 断胜利定值~="" and  断胜利定值>=5  and  可用瓶子数~=nil and 可用瓶子数~="" and 可用瓶子数>=1  then
if 断胜利定值==连胜数5 or 断胜利定值==连胜数6 or 断胜利定值==连胜数7 or 断胜利定值==连胜数8 or 断胜利定值==连胜数9 or 断胜利定值==连胜数10 or 断胜利定值==连胜数12 or 断胜利定值>=连胜数10以上 or 断胜利定值>=连胜数15以上 or 断胜利定值>=连胜数20以上   then
点击(660,411)
mSleep(2*ttt)
点击2(550,363)
可用瓶子数=可用瓶子数-1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
end
失败定值=0
end
end
if  失败定值~=nil and 失败定值~="" and 失败定值>=1  and 断胜利定值~=nil and 断胜利定值~="" and 断胜利定值>=2  then
投降次数=投降次数+1
降分()
end
点击(580,490)
mSleep(2*ttt)
for xx=1,80,1 do
mSleep(ttt)
常用界面4s()
if 手动中4x> -1  then
点击(35,155)
break
end
end
end	
if 决斗场4x> -1 and 可手动==0 then
mSleep(ttt)
断连胜值()
if 断胜利定值~=nil and 断胜利定值~="" and  断胜利定值>=5  and   可用瓶子数~=nil and 可用瓶子数~="" and 可用瓶子数>=1  then
if 断胜利定值==连胜数5 or 断胜利定值==连胜数6 or 断胜利定值==连胜数7 or 断胜利定值==连胜数8 or 断胜利定值==连胜数9 or 断胜利定值==连胜数10 or 断胜利定值==连胜数12 or 断胜利定值>=连胜数10以上 or 断胜利定值>=连胜数15以上 or 断胜利定值>=连胜数20以上   then
点击(660,411)
mSleep(2*ttt)
点击2(550,363)
可用瓶子数=可用瓶子数-1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
end
失败定值=0
end
end
if  失败定值~=nil and 失败定值~="" and 失败定值>=1  and 断胜利定值~=nil and 断胜利定值~="" and 断胜利定值>=2  then
投降次数=投降次数+1
降分()
end
点击(580,490)
end	


if 手动中4x> -1  and 可手动==0  then
点击(35,155)
elseif 自动中4x> -1 then
mSleep(3*ttt)  --点击(10,220)
elseif  胜利4x> -1  then
mSleep(ttt)
经验()
点击(310,580)
领奖场次=领奖场次+1
连s=连s+1
胜=胜+1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
end
在线领奖4s()
elseif 失败4x> -1 then 
点击(310,580)
领奖场次=领奖场次+1
连胜数统计()
负=负+1
失败定值=1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
end
在线领奖4s()		
elseif 平局4x> -1 then 
点击(310,580)	
领奖场次=领奖场次+1
平=平+1
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,450,15)		
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 余"..可用瓶子数.."瓶子",15,"0xffff0000","0xffffffff",0,50,0,350,15)	
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