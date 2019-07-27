function 赠神器ipad()

width,height = getScreenSize()
if (width==1536 and height==2048) or (width==2048 and height==2732) or (width==1668 and height==2224) then
  setScreenScale(1536,2048)
	else
	dialog("不支持此分辨率", 3)
  mSleep(1000)
  lua_exit(); --否则退出脚本
	end

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
mSleep(600)
  if 神器位置==0 then     
    点击(140,430)
  elseif 神器位置==1 then  
    点击(650,560)
	elseif 神器位置==2 then  
    点击(650,1270)	
  elseif 神器位置==3 then  
	mSleep(100)
  end

while true do 


赠送px,赠送py= 找颜色(0xade564,"34|44|0xfffaf0,85|44|0xfffaf0,127|47|0xfffaf0,144|48|0x518405", 95, 472,367,1488,1520)
--首饰px,首饰py= 找颜色(0xfeff01,"-12|24|0x010501,1|24|0x060d07,9|24|0xd2a060", 95, 209, 140, 1814, 1374)
首饰px,首饰py= 找颜色(0xfec204,"45|7|0xfef607,100|2|0xffd007", 95, 1525, 409, 1736, 494, 0, 0)
钥匙px,钥匙py= 找颜色(0xe1c614,"9|1|0xb85f01,24|2|0xf5da01,32|9|0xe4ce08", 95, 209, 140, 1814, 1374)
天平px,天平py= 找颜色(0xaeaa6e,"10|18|0x873600,2|52|0xc6ec09,20|49|0xffff08", 95, 209, 140, 1814, 1374)
确定px,确定py= 找颜色(0x7bbc22,"10|-1|0xfffaf0,60|30|0xf9f4ea,99|30|0xefebe0,105|31|0x4e8003", 95, 1060, 764, 1353, 939)


if 赠送px> -1  then
点击3(赠送px,赠送py)
end

if 首饰px> -1  then
点击3(首饰px,首饰py)
elseif 钥匙px> -1  then
点击3(钥匙px,钥匙py)
elseif 天平px> -1  then
点击3(天平px,天平py)
end

if 确定px> -1  then
点击3(确定px,确定py)
break
end
end
end

end

function 领神器ipad()

width,height = getScreenSize()
if (width==1536 and height==2048) or (width==2048 and height==2732) or (width==1668 and height==2224) then
  setScreenScale(1536,2048)
	else
	dialog("不支持此分辨率", 3)
  mSleep(1000)
  lua_exit(); --否则退出脚本
	end

showHUD(胜负,"运行中",25,"0xffff0000","0xffffffff",0,200,0,100,25)

while true do

while true do
mSleep(100)

领奖成功px,领奖成功py= 找颜色(0xffffff,"144|136|0xffffff,291|128|0x666666,383|133|0xcfcfcf", 95, 709, 486, 1328, 676)
if 领奖成功px> -1  then
点击(1020,1355)
break
end

领取px,领取py= 找颜色(0xa4de56,"8|33|0x4d8102", 95, 1775, 203, 1864, 1351, 0, 0)

if 领取px> -1  then
点击(领取px,领取py)
end

已领取px,已领取py= 找颜色(0xc8fa96,"15|16|0x6f8591", 95, 1777, 192, 1858, 1371, 0, 0)

if 已领取px> -1  then
选取2(1717,1267,5,-90)
--mSleep(1000)
end

end
end
end