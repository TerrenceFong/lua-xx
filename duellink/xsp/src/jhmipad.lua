function 激活码ipad()
hideHUD(胜负)

while true do
  主界面px,主界面py= 找颜色(0x4d5059,"73|15|0x00b5e2,100|19|0x0f1c33,142|26|0x0a0414,173|22|0x261907", 95, 1295, 1217, 1634, 1267)
  人物px,人物py= 找颜色(0xffff80,"10|0|0xf93906,22|0|0xffff80,36|0|0xffff80,49|-1|0xffff80,59|8|0xc22700,63|28|0x831800", 95, 1453, 282, 1546, 332)
  激活码px,激活码py= 找颜色(0x554847,"3|6|0x9d8f8d,5|13|0x7d7272,10|20|0xa9a9a9,20|23|0xd6d6d6", 95, 578, 730, 620, 791)
  mSleep(200)
  if 主界面px> -1 then
    点击(120, 133)
  elseif 人物px> -1 then
    点击(1564, 1278)
  elseif 激活码px> -1 then
    兑换码()
    --JHM=getStringConfig("UI胜场",UI["050"])
    d1w=1
    d8w=7
    if JHM=="" or JHM==nil  then
      dialog("你没填写兑换码", 3)
      lua_exit()
    end
    while true do
      mSleep(500)
      领奖成功px,领奖成功py= 找颜色(0xffffff,"144|136|0xffffff,291|128|0x666666,383|133|0xcfcfcf", 95, 709, 486, 1328, 676)
      领奖成功p2x,领奖成功p2y= 找颜色(0x0948b9,"14|10|0xe3ea16,39|22|0x9ab551,60|32|0x7a9d70", 95, 920, 69, 1029, 127)
      if 激活码px> -1 then			
        sjhm=string.sub(JHM,d1w,d8w)
        if sjhm=="" or sjhm==nil then
          dialog("兑换完毕", 3)				
          lua_exit()
        end
        点击(650,725)  --点击填写
        mSleep(2*ttt)
        string=sjhm    --填写内容
        --mSleep(ttt/2)
        inputText(string)  --写入内容
        mSleep(ttt/2)
        点击(500,565)  --点回页面
        mSleep(ttt)
        点击(1020,925)  --兑换
        --mSleep(2*ttt)
        d1w=d1w+8
        d8w=d8w+8
				剩余码=string.sub(JHM,d1w,-1)
      end
      if 领奖成功px> -1  then
        点击(1000,1420)
      end
      if 领奖成功p2x> -1  then
        点击(1000,1420)
      end	 
    end
  end
end
end