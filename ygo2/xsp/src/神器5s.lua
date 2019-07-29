function 赠神器5s()
width,height = getScreenSize()
if (width==1242 and height==2208) then
  setScreenScale(640,1136)
else
	lua_exit()
end
	
showHUD(胜负,"运行中",20,"0xffff0000","0xffffffff",0,150,0,100,20)


local ret2,UI2=showUI('ui2.json')

if UI2["273"]~="" then    
  if UI2["273"]=="0" then     
    神器位置=0
  elseif UI2["273"]=="1" then  
    神器位置=1
  elseif UI2["273"]=="2" then  
    神器位置=2
  elseif UI2["273"]=="3" then  
    神器位置=3  
	end
end

if ret2 == 0 then  --当前图框点击取消的时候
  lua_exit()
end

mSleep(1500)

while true do
mSleep(100)
  if 神器位置==0 then     
    点击(60,190)
  elseif 神器位置==1 then  
    点击(400,260)
	elseif 神器位置==2 then  
    点击(400,530)	
  elseif 神器位置==3 then  
	mSleep(100)
  end

while true do 

赠送x,赠送y= 找颜色(0xace161,"25|5|0x7eb931,28|15|0xfef9ef,43|18|0xfffaf0,45|20|0x456f05", 95, 169, 92, 758, 631, 1, 1)
首饰x,首饰y= 找颜色(0xfaff00,"7|8|0x031004,13|8|0x010808,30|9|0xfdfe02", 95, 805, 197, 843, 210)
钥匙x,钥匙y= 找颜色(0xffff04,"5|3|0xe5cb04,11|9|0xffff00,20|15|0xdcb7b5", 95, 297, 311, 341, 331)
天平x,天平y= 找颜色(0xffff09,"7|-3|0xb3a007,15|1|0x9d4202,27|5|0xa2a935", 95, 434, 295, 469, 321)
确定x,确定y= 找颜色(0xa4df56,"-52|21|0x4e8003,-138|-1|0xffbb3a,-206|18|0x815200", 95, 430, 321, 706, 391)


if 赠送x> -1  then
点击(赠送x,赠送y)
end

if 首饰x> -1  then
点击(首饰x,首饰y)
elseif 钥匙x> -1  then
点击(钥匙x,钥匙y)
elseif 天平x> -1  then
点击(天平x,天平y)
end

if 确定x> -1  then
点击(确定x,确定y)
break
end
end

end

end

function 领神器5s()
width,height = getScreenSize()
if (width==1242 and height==2208) then
  setScreenScale(640,1136)
else
	lua_exit()
end

showHUD(胜负,"运行中",20,"0xffff0000","0xffffffff",0,150,0,100,20)
dialog("请打开(邮件-赠送)界面，再运行脚本，否则会出错", 0)
mSleep(1000)
while true do

mSleep(200)
领取x,领取y= 找颜色(0xa6df5b,"52|-2|0xb2e86d,18|15|0xfffaf0,6|19|0x518505,43|18|0x313725", 95, 802, 79, 931, 575)
已领取x,已领取y= 找颜色(0xc1f097,"17|8|0x7b919f,34|14|0xc5f696,46|15|0x778e9c,58|16|0xa2c798", 95, 802, 79, 931, 575)
领奖成功x,领奖成功y= 找颜色(0xfefefe,"74|36|0xffffff,141|22|0x000000,214|30|0x030303", 95, 434, 207, 696, 280)

if 领取x> -1  then
点击(领取x,领取y)
elseif 领奖成功x> -1  then
点击(570,590)
end

if 已领取x> -1  then
选取(950,410,10,-30)
end

end
end