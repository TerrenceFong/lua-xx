function 点练习4s()
while  true  do   
  常用界面4s()
  不常用界面4s()	
  多用界面4s()
  少用界面4s()
end	
end

function 点练习5s()
while  true  do   
常用界面5s()
不常用界面5s()
多用界面5s()
少用界面5s()
end	
end

function 点练习7()
while  true  do   
常用界面7()
不常用界面7()
多用界面7()
少用界面7()
end	
end

function 点练习ipad()
while  true  do   
常用界面ipad()
不常用界面ipad()
多用界面p()
少用界面p()
end	
end

function 测试点()
width,height = getScreenSize()   --读取屏幕分辨率
if (width==640 and height==1136) or (width==1242 and height==2208) or (width==1125 and height==2001) then
setScreenScale(640,1136)
点练习5s()
elseif (width==750 and height==1334)   then
setScreenScale(750,1334)
点练习7()
elseif (width==768 and height==1024) or (width==1536 and height==2048) or (width==2048 and height==2732) or (width==1668 and height==2224) then
setScreenScale(1536,2048)
点练习ipad()
elseif (width==640 and height==960)   then
setScreenScale(640,960)
点练习4s()	
end
end