function 激活码7()
hideHUD(胜负)

while true do
  主界面7x,主界面7y= 找颜色(0x2d2c39,"12|2|0x141414,27|1|0xe0dcd5,46|1|0x2b2d34", 90, 45, 722, 97, 749)
  人物7x,人物7y= 找颜色(0x5d5e62,"1|0|0x4f5056,2|1|0x000001,3|2|0x2f3033,4|3|0x494a4f", 95, 326, 127, 430, 229)
  激活码7x,激活码7y= 找颜色(0x6c6b7b,"4|8|0xbdbabc,3|32|0xaaa1a2,3|39|0x9c9c9c,8|44|0xffffff", 95, 446, 283, 478, 353)
  mSleep(200)
  if 主界面7x> -1 then
    点击(55, 67)
  elseif 人物7x> -1 then
    点击(930, 626)
  elseif 激活码7x> -1 then
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
      领奖成功7x,领奖成功7y= 找颜色(0x342e17,"94|3|0xfefefe,176|8|0xffffff,243|13|0x373423", 95, 508, 244, 819, 336)
      领奖成功72x,领奖成功72y= 找颜色(0x5b798a,"9|4|0x486c9b,19|8|0x99ae64,25|11|0x4d729c", 95, 616, 34, 668, 63)
      if 激活码7x> -1 then
        sjhm=string.sub(JHM,d1w,d8w)
        if sjhm=="" or sjhm==nil then
          dialog("兑换完毕", 3)
          lua_exit()
        end
        点击(490,355)  --点击填写
        mSleep(2*ttt)
        string=sjhm    --填写内容
        --mSleep(ttt/2)
        inputText(string)  --写入内容
        mSleep(ttt/2)
        点击(410,260)  --点回页面
        mSleep(ttt)
        点击(666,450)  --兑换
        --mSleep(2*ttt)
        d1w=d1w+8
        d8w=d8w+8
				剩余码=string.sub(JHM,d1w,-1)
      end
      if 领奖成功7x> -1  then
        点击(666, 687)
      end
      if 领奖成功72x> -1  then
        点击(666, 687)
      end	 
    end
  end
end
end