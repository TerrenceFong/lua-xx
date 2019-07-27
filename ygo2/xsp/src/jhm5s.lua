function 激活码5s()
hideHUD(胜负)
记录兑换=1
while true do
  主界面x,主界面y= 找颜色(0x4e515a,"27|13|0x06bde9,42|17|0x0e2340,55|18|0x000715", 95, 820, 505, 960, 533)
  人物x,人物y= 找颜色(0x821800,"8|0|0xffff80,30|-5|0xf9f87c,42|-3|0x8c1a00,51|-4|0xffff80,68|2|0x821701,81|-3|0xffff80", 95, 745, 114, 841, 139)
  激活码x,激活码y= 找颜色(0x504344,"4|5|0x838281,6|5|0xbebebe,11|8|0x615a59", 95, 380, 279, 399, 329)
  mSleep(100)
  if 主界面x> -1 then
    点击(51, 52)
  elseif 人物x> -1 then
    点击(795, 533)
  elseif 激活码x> -1 then
      兑换码()
    --JHM=getStringConfig("UI胜场",UI["050"])
    d1w=1
    d8w=7
    if JHM=="" or JHM==nil  then
      dialog("你没填写兑换码", 3)
      lua_exit()
    end      
    while true do
      mSleep(ttt)
      领奖成功x,领奖成功y= 找颜色(0xfefefe,"74|36|0xffffff,141|22|0x000000,214|30|0x030303", 95, 434, 207, 696, 280)
      领奖成功2x,领奖成功2y= 找颜色(0x648b79,"5|0|0xfafb04,13|0|0xffff00,21|0|0x0b4cc6", 95, 525, 29, 570, 54)
      if 激活码x> -1 then
        sjhm=string.sub(JHM,d1w,d8w)
        if sjhm=="" or sjhm==nil then
          dialog("兑换完毕", 3)				
          lua_exit()
        end
        点击(410,300)  --点击填写
        mSleep(2*ttt)
        string=sjhm    --填写内容
        --mSleep(ttt/2)
        inputText(string)  --写入内容
        mSleep(ttt/2)
        点击(360,230)  --点回页面
        mSleep(ttt)
        点击(565,385)  --兑换
        --mSleep(ttt)
        d1w=d1w+8
        d8w=d8w+8
				剩余码=string.sub(JHM,d1w,-1)
      end
      if 领奖成功x> -1  then
        点击(570,590)
      end
      if 领奖成功2x> -1  then
        点击(570,590)
      end 
    end
  end
end
end