function 上分模式7()  --7图片参数 可认输

function  经验()
if 显示结果==1 then
  
  mSleep(ttt)
  
  keepScreen(true);
  
  colorTbl = binarizeImage({
      rect = {1033,328,1093,351},
      diff = {"0xd2f9a1-0x101010"}
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

function  法老遗产7()  --识别数字函数

colorTbl = binarizeImage({           --创建一个名称为colorTbl的函数表
  rect = {790,19,852,41},
  diff = {"0xfffaf0-0x202020","0xfffaf0-0x202020","0xebe7de-0x202020"}
})                         ---rect 方框坐标系  要识别的字或数字颜色

for _, row in pairs(colorTbl) do    --扫描olorTbl的函数表
sysLog(table.concat(row, ','))          ----????      
end

local ocr, msg = createOCR({                      -----载入   高级文字识别字库
  type = "tesseract"         ------ 指定tesseract引擎 
})

local code, 分值7 = ocr:getText({          --高级文字识别
  data = colorTbl,                  ----data =表 colorTbl
  psm = 7, -- 单个字符模式识别
  whitelist = "0123456789"
})

ocr:release()

local 数字7=tonumber(分值7)       --把分值7的字符串变为数值

if  数字7~=nil then
if 数字7 >= 设置上分分数   then
  mSleep(100)
  可领奖7()
  mSleep(ttt)
  if 可冒险==1 then
	require("m冒险模式7")
    冒险模式7()
  end
  结束()
  lua_exit();
end
end
end

function  在线领奖7()
mSleep(2*ttt)
if  领奖场次>=15 and  在线领奖次数>=1  then
mSleep(2*ttt)
点击(80,20)--返回主页面
mSleep(2*ttt)
点击(655,201) --清除每日任务
mSleep(2*ttt)
点击(1280,100) --点击签到
mSleep(2*ttt)
点击(950,633) --点击签到
mSleep(2*ttt)
点击(1000,270)  --点击领奖
mSleep(2*ttt)
点击(666,678)   --返回
mSleep(2*ttt)
点击(1125, 60)
在线领奖次数=在线领奖次数-1
领奖场次=0
end 
end

while true do
电()
常用界面7()
不常用界面7()
mSleep(ttt) 

if 主界面7x> -1 then
点击2(1010, 370)
elseif 决斗场7x> -1 and 可手动==1 then
mSleep(2*ttt)	  
法老遗产7()
点击(780, 570)
mSleep(2*ttt)		
for xx=1,60,1 do
mSleep(ttt)
常用界面7()
if 手动中7x> -1 then
  点击(40, 180)
  break
end
end		
elseif 决斗场7x> -1 and 可手动==0 then
mSleep(1000)	  
法老遗产7()
点击(780, 570)
elseif 手动中7x> -1 and 可手动==0 then
点击(40, 180)
elseif 自动中7x> -1 then
mSleep(3*ttt) --点击(7, 340)	
elseif 胜利7x> -1 then  
mSleep(ttt/2)
经验()
点击(465, 678)
领奖场次=领奖场次+1
连s=连s+1
胜=胜+1	
if 显示结果==1 then 
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
else
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
end		
在线领奖7()
elseif 失败7x> -1 then
点击(465, 678)
领奖场次=领奖场次+1
连胜数统计()
负=负+1
if 显示结果==1 then 
showHUD(胜负,"胜  "..胜.." 场 ".."负 "..负.." 场  ".."平 "..平.." 场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
else
showHUD(胜负,"胜  "..胜.." 场  ".."负  "..负.." 场  ".."平  "..平.." 场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
end		
在线领奖7()
elseif 平局7x> -1 then  
点击(465, 678)
领奖场次=领奖场次+1
平=平+1
if 显示结果==1 then 
showHUD(胜负,"胜  "..胜.." 场 ".."负 "..负.." 场  ".."平 "..平.." 场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
else
showHUD(胜负,"胜  "..胜.." 场  ".."负  "..负.." 场  ".."平  "..平.." 场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
end		
在线领奖7()
elseif 零点重置7x> -1 then
胜= 0
负= 0
平= 0
领奖场次=0
在线领奖次数=5
点击2(660,430)
end

少用界面7()
防闪退7()
end
end