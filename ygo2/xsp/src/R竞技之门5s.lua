function 竞技之门5s()
hideHUD(胜负)
while true do
  while true do
    
    电()
    常用界面5s()
    不常用界面5s()
    mSleep(ttt) 
    
    竞技之门有卷x,竞技之门有卷y= 找颜色(0xafe666,"35|4|0x1d56cb,39|21|0x0f378e,107|28|0x538707", 95, 694, 540, 845, 605)
    竞技之门没卷x,竞技之门没卷y= 找颜色(0xaee566,"29|10|0xfeed51,55|11|0xfffef4,88|21|0xfffff5,102|23|0x4e8102", 95, 692, 539, 846, 607)
    竞技有牌x,竞技有牌y= 找颜色(0xfafa78,"15|1|0xfafa78,28|46|0xa82800,31|115|0x9f2500,29|147|0x1e4d77", 95, 429, 70, 594, 240)
    竞技没牌x,竞技没牌y= 找颜色(0x1353ce,"4|0|0xfffff4,17|1|0xfffbf0,42|-1|0xfef9ef,47|-1|0x204da3", 95, 753, 71, 815, 95)
    人物选择x,人物选择y= 找颜色(0x0f52cf,"62|-4|0xfffff4,106|2|0xfffaf0,123|-1|0xfffbf1,140|2|0x1452cb", 95, 588, 60, 745, 106)
    输了x, 输了y = 找颜色(0x40679e,"15|0|0xffffff,52|2|0x05090d,100|3|0xffffff,131|2|0xffffff,162|-3|0x121c2a,194|2|0xffffff", 95, 764, 134, 1001, 203) 
    
    if 主界面x> -1 then
      点击2(800,300)
    elseif 决斗场x> -1 then
      点击(100,320)
    elseif 竞技之门有卷x> -1 then
      点击(770,570)
    elseif 竞技之门没卷x> -1 then
      if 用钱==1 then
        点击(770,570)
      else
        lua_exit()
      end
    elseif 竞技有牌x> -1 and 可手动==1 then
      mSleep(ttt)
      领奖励x,领奖励y= 找颜色(0xff7855,"42|10|0xfffaf0,59|18|0xfffaf0,80|24|0x821800", 95, 0, 0, 1135, 639)
      if 领奖励x> -1 then
        点击(670,365)
        break
      end
      if 竞技认输==1 then
        点击(980,440)
        mSleep(1000)
        点击(625,350)
        break
      end
      点击(670,365)
      mSleep(ttt)
      for xx=1,60,1 do
        mSleep(ttt)
        常用界面5s()
        if 手动中x> -1 then
          点击(23,146)
          break
        end
      end
    elseif 竞技有牌x> -1 and 可手动==0 then
      mSleep(ttt)
      领奖励x,领奖励y= 找颜色(0xff7855,"42|10|0xfffaf0,59|18|0xfffaf0,80|24|0x821800", 95, 0, 0, 1135, 639)
      if 领奖励x> -1 then
        点击(670,365)
        break
      end
      if 竞技认输==1 then
        点击(980,440)
        mSleep(1000)
        点击(625,350)
        break
      end
      点击(670,365)
    elseif 竞技没牌x> -1 then
      if 自动牌组==1 then
        选牌5s()
      end
    elseif 人物选择x> -1 then
      if 自动选人物==1 then
        点击(670,590)
      end
    elseif 手动中x> -1 and 可手动==0 then
      if 竞技认输==1 then
        点击(36, 97)
        mSleep(700)		
        点击(260, 97)
        点击2(590,360)
      else
        点击(23,146)
      end
    elseif 自动中x> -1 then
      if 竞技认输==1 then
        点击(36, 97)
        mSleep(700)		
        点击(260, 97)
        点击2(590,360)
      else
        mSleep(3*ttt) -- 点击(10,220)
      end
    elseif 胜利x> -1 then 
      点击(350,565)
    elseif 输了x> -1 then 
      点击(350,565)	
    elseif 平局x> -1 then 
      点击(350,565)
    end
    
    少用界面5s()
    
  end
end
end