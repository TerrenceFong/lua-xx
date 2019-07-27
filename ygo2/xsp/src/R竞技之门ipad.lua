function 竞技之门ipad()
hideHUD(胜负)
while true do
  while true do
    
    电()
    常用界面ipad()
    不常用界面ipad()
    mSleep(ttt) 
    
    竞技之门有卷px,竞技之门有卷py= 找颜色(0xace463,"31|8|0x1d56ca,42|50|0x123794,80|58|0x4f8103", 95, 1424, 1321, 1595, 1425)
    竞技之门没卷px,竞技之门没卷py= 找颜色(0xb1e869,"42|34|0xfdf80b,55|60|0xfdfefe,96|68|0x538607", 95, 1352, 1307, 1663, 1444)
    竞技有牌px,竞技有牌py= 找颜色(0xfafa78,"105|-11|0xfafa78,70|88|0x9b2400,36|252|0xa32500,103|254|0xa22600", 95, 705, 182, 1076, 560)
    竞技没牌px,竞技没牌py= 找颜色(0x1451cb,"11|0|0xfffaf0,62|-5|0xfffaf0,101|1|0xfffaf0,113|1|0x2250a7", 95, 1467, 169, 1622, 232)
    人物选择px,人物选择py= 找颜色(0x333e54,"107|-22|0xb4e96d,200|23|0xfffaf0,346|39|0x4e8003,434|45|0x212d43", 95, 1020, 1330, 1527, 1504)
    
    if 主界面px> -1 then
      点击2(1340,770)
    elseif 决斗场px> -1 then
      点击(230,770)
    elseif 竞技之门有卷px> -1 then
      点击(1500,1370)
    elseif 竞技之门没卷px> -1 then
      if 用钱==1 then
        点击(1500,1370)
      else
        lua_exit()
      end
    elseif 竞技有牌px> -1 and 可手动==1 then
      mSleep(ttt)
      领奖励px,领奖励py= 找颜色(0xfe5021,"26|21|0xfffaf0,71|38|0xf8f2e8,80|44|0x821700", 95, 1196, 835, 1336, 917)
      if 领奖励px> -1 then
        点击(1270,880)
        break
      end
      if 竞技认输==1 then
        点击(1600,1050)
        mSleep(1000)
        点击(1200,845)
        break
      end
      点击(1270,880)
      mSleep(ttt)
      for xx=1,60,1 do
        mSleep(ttt)
        常用界面ipad()
        if 手动中px> -1 then
          点击(50,360)
          break
        end
      end
    elseif 竞技有牌px> -1 and 可手动==0 then
      mSleep(ttt)
      领奖励px,领奖励py= 找颜色(0xfe5021,"26|21|0xfffaf0,71|38|0xf8f2e8,80|44|0x821700", 95, 1196, 835, 1336, 917)
      if 领奖励px> -1 then
        点击(1270,880)
        break
      end
      if 竞技认输==1 then
        点击(1600,1050)
        mSleep(1000)
        点击(1200,845)
        break
      end
      点击(1270,880)
    elseif 竞技没牌px> -1 then
      if 自动牌组==1 then
        选牌p()
      end
    elseif 人物选择px> -1 then
      if 自动选人物==1 then
        点击(1270,1420)
      end
    elseif 手动中px> -1 and 可手动==0 then
      if 竞技认输==1 then
        点击(86,233)
        mSleep(700)
        点击(658,233)
        点击2(1090,880)
      else
        点击(50,360)
      end
    elseif 自动中px> -1 then
      if 竞技认输==1 then
        点击(86,233)
        mSleep(700)
        点击(658,233)
        点击2(1090,880)
      else
        mSleep(3*ttt) -- 点击(10,220)
      end
    elseif 胜利px> -1 then 
      点击(620,1380)
    elseif 失败px> -1 then 
      点击(620,1380)
    elseif 平局px> -1 then 
      点击(620,1380)
    end
    
    少用界面p()
    
  end
end
end