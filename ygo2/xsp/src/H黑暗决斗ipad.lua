function 黑暗决斗ipad()
hideHUD(胜负)
次=0
while true do
  
  电()
  常用界面ipad()
  不常用界面ipad()
  mSleep(ttt) 
  
  黑暗有卷px,黑暗有卷py= 找颜色(0x8bcc38,"11|17|0xe96e70,28|33|0xa96b3a,56|34|0xd35657", 95, 1157, 848, 1250, 914)
  黑暗没卷px,黑暗没卷py= 找颜色(0xa3de5b,"16|11|0xfbf4b0,40|35|0xe2b106,61|53|0x528406", 95, 1155, 841, 1240, 913)
  中场px,中场py = 找颜色(0xeaff8b,"-1|14|0xdcff7f,51|0|0xffdc00,53|23|0xfd9e01", 95, 979, 399, 1071, 446)
  
  
  if 主界面px> -1 then
    点击2(1340,790)
  elseif 决斗场px> -1 then
    点击(340,1500)
  elseif 黑暗有卷px> -1 then
    点击(1270,870)
    --次=0
  --elseif 黑暗没卷px> -1 then
   -- if 用钱==1 then
     -- 点击(1270,870)
     -- 次=0
    --else
     -- lua_exit()
    --end
  elseif 手动中px> -1 then --and 次<1 then
    if 竞技认输==1 then
      点击(86,233)
      mSleep(700)
      点击(658,233)
      点击2(1090,880)
      --次=次+1
    else
      点击(50,360)
      --次=次+1
    end
  elseif 中场px> -1 then 
    点击(1020,1400)
    次=0
  elseif 自动中px> -1 then
    mSleep(3*ttt) -- 点击(10,220)
  end
  
  少用界面p()
  
end
end