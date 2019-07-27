function 社团乱斗5s()

hideHUD(胜负)

width,height = getScreenSize()
if (width==640 and height==1136) or (width==1242 and height==2208) then
  setScreenScale(640,1136)
 else
	dialog("不支持此分辨率", 3)
  mSleep(1000)
  lua_exit(); --否则退出脚本
	end
	
while true do

电()
常用界面5s()
不常用界面5s()
社团开始x,社团开始y= 找颜色(0xb5b5fd,"12|0|0x181818,16|2|0xacb7f4,23|3|0x404b58", 95, 495, 224, 539, 250)
mSleep(ttt) 

if 主界面x> -1 then
点击2(800,300)
elseif 决斗场x> -1 then
选取(100,550,10,-300)
mSleep(2*ttt)
点击(100,350)
elseif 社团开始x> -1 then
点击(670,600)
elseif 手动中x> -1 then
点击(23,146)
elseif 自动中x> -1 then
mSleep(3*ttt) -- 点击(10,220)
elseif 胜利x> -1 then 
点击(350,565)
elseif 失败x> -1 then 
点击(350,565)		
elseif 平局x> -1 then 
点击(350,565)
end

少用界面5s()
end
end