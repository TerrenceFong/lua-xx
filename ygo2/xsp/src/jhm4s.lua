function 激活码4s()
hideHUD(胜负)

while true do
  主界面4x,主界面4y= 找颜色(0xd6e8ef,"2|12|0xdef2f8,17|4|0xfcfffe,25|7|0xfef7f4,27|10|0x11416c", 95, 633, 332, 667, 351)
  人物4x,人物4y= 找颜色(0xc9ac31,"4|7|0x62460f,10|12|0xb77111,19|16|0x955807", 95, 531, 126, 563, 150)
  激活码4x,激活码4y= 找颜色(0x534646,"1|2|0x897c79,4|5|0xa2a2a2,8|6|0xeeeeee", 95, 293, 307, 314, 331)
  mSleep(200)
  if 主界面4x> -1 then
    点击(52, 54)
  elseif 人物4x> -1 then
    点击(700, 531)
  elseif 激活码4x> -1 then
    兑换码()
    --JHM=getStringConfig("UI胜场",UI["050"])
    d1w=1
    d8w=7
    if JHM=="" or JHM==nil  then
      dialog("你没填写激活码", 3)
      lua_exit()
    end
    while true do
      mSleep(ttt)
      领奖成功4x,领奖成功4y= 找颜色(0xfefdff,"74|36|0xffffff,143|25|0x030303,196|44|0x0c0e03", 95, 348, 206, 608, 282)
      领奖成功42x,领奖成功42y= 找颜色(0xa2b84a,"9|5|0xdae220,20|7|0xf9fa06,32|9|0xffff00", 95, 436, 30, 481, 53)
      if 激活码4x> -1 then
        sjhm=string.sub(JHM,d1w,d8w)
        if sjhm=="" or sjhm==nil then
          dialog("兑换完毕", 3)			
          lua_exit()
        end
        点击(322,300)  --点击填写
        mSleep(2*ttt)
        string=sjhm    --填写内容
        mSleep(ttt)
        inputText(string)  --写入内容
        mSleep(ttt)
        点击(255,215)  --点回页面
        mSleep(2*ttt)
        点击(480,385)  --兑换
        mSleep(2*ttt)
        d1w=d1w+8
        d8w=d8w+8
				剩余码=string.sub(JHM,d1w,-1)
      end
      if 领奖成功4x> -1  then
        点击(472,571)
      end
      if 领奖成功42x> -1  then
        点击(472,571)
      end	 
    end
  end
end
end