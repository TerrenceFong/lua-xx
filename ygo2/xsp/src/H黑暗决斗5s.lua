function 黑暗决斗5s()
hideHUD(胜负)
次=0
while true do
  
  电()
  常用界面5s()
  不常用界面5s()
  mSleep(ttt) 
  
  黑暗有卷x,黑暗有卷y= 找颜色(0x99da49,"5|4|0xeb797b,19|19|0xfbca77,29|24|0x56890a", 95, 624, 346, 661, 386)
  黑暗没卷x,黑暗没卷y= 找颜色(0xabe25f,"6|6|0xfaefa3,16|14|0x2c2009,25|23|0x538304", 95, 623, 350, 658, 382)
  中场x,中场y = 找颜色(0xebff8d,"-1|6|0xdeff7e,22|-1|0xfad603,22|8|0xfeb702", 95, 543, 164, 590, 191)
  
  
  if 主界面x> -1 then
    点击2(800,300)
  elseif 决斗场x> -1 then
    点击(140,620)
  elseif 黑暗有卷x> -1 then
    点击(670,360)
    次=0
  elseif 黑暗没卷x> -1 then
    if 用钱==1 then
      点击(670,360)
      次=0
    else
      lua_exit()
    end
  elseif 手动中x> -1 and 次<1 then
    if 竞技认输==1 then
      点击(36, 97)
      mSleep(700)		
      点击(260, 97)
      点击2(590,360)
      次=次+1
    else
      点击(23,146)
      次=次+1
    end
  elseif 中场x> -1 then 
    点击(570,580)
    次=0
  elseif 自动中x> -1 then
    mSleep(3*ttt) -- 点击(10,220)
  end
  
  少用界面5s()
  
end
end