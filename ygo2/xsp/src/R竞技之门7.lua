function 竞技之门7()
-- hideHUD(胜负)
  while true do
    while true do
      电()
      常用界面7()
      不常用界面7()
      mSleep(ttt) 
      
      if 胜>=设置胜场jjha then   --假如胜利场数达到UI里面设置的胜场数
        mSleep(100)
        结束()
        lua_exit();
      end

      竞技之门有卷7x,竞技之门有卷7y= findColor({808, 619, 999, 720}, "0|0|0xa7a4a4,-61|-25|0xbeee7f,67|-19|0xb6ea71,-63|19|0x5b8e0d,70|19|0x5c8f0e,-15|-12|0x1854c8,-2|-14|0x1d56ca,-14|7|0x0a3391", 95, 0, 0, 0)
      竞技之门没卷7x,竞技之门没卷7y= 找颜色(0x1d2a07,"1|1|0x22300a,3|2|0x1a1e10,6|2|0x7c7e6e", 95, 922, 679, 932, 686)
      竞技有牌7x,竞技有牌7y= 找颜色(0x222816,"1|0|0x818375,3|1|0x979889,4|1|0x666a59", 95, 1281, 521, 1291, 528)
      竞技没牌7x,竞技没牌7y= 找颜色(0x222733,"1|1|0x19337a,2|3|0x183175,3|4|0xc4c3c1", 95, 897, 98, 903, 105)
      人物选择7x,人物选择7y= findColor({650, 66, 905, 128}, "0|0|0x0b1521,128|28|0xdbd9d4,149|29|0xfffaf0,37|15|0x0e51cc,42|36|0x0a50cf,225|37|0x1554cd,226|18|0x0e4bc5,202|29|0x96989d", 95, 0, 0, 0)
      
      if 主界面7x> -1 then
        点击2(1010, 370)
      elseif 决斗场7x> -1 then
        点击(120,380)
      elseif 竞技之门有卷7x> -1 then
        sysLog('竞技之门有卷7x')
        点击(900,670)
      elseif 竞技之门没卷7x> -1 then
        if 用钱==1 then
          点击(900,670)
        else
          lua_exit()
        end
      elseif 竞技有牌7x> -1 and 可手动==1 then
        mSleep(ttt)
        领奖励7x,领奖励7y= 找颜色(0x300d02,"2|0|0x190702,3|0|0x423732,4|0|0xa09891", 95, 777, 438, 784, 443)
        if 领奖励7x> -1 then
          点击(785,430)
          break
        end
        if 竞技认输==1 then
          点击(1145,515)
          mSleep(1000)
          点击(730,410)
          break
        end
        点击(785,430)
        mSleep(ttt)
        for xx=1,60,1 do
          mSleep(ttt)
          常用界面7()
          if 手动中7x> -1 then
            点击(40, 180)
            break
          end
        end
      elseif 竞技有牌7x> -1 and 可手动==0 then
        sysLog('竞技有牌7x')
        mSleep(ttt)
        领奖励7x,领奖励7y= 找颜色(0x300d02,"2|0|0x190702,3|0|0x423732,4|0|0xa09891", 95, 777, 438, 784, 443)
        if 领奖励7x> -1 then
          -- dialog("4", 5)
          点击(785,430)
          sysLog('领奖励成功，已点击')
          break
        end
        if 竞技认输==1 then
          点击(1145,515)
          mSleep(1000)
          点击(730,410)
          break
        end
        点击(785,430)
      elseif 竞技没牌7x> -1 then
        sysLog('竞技没牌7x')
        if 自动牌组==1 then
          选牌7()
        end
      elseif 人物选择7x> -1 then
        sysLog('人物选择7x')
        if 自动选人物==1 then
          点击(790,690)
        end
      elseif 手动中7x> -1 and 可手动==0 then
        if 竞技认输==1 then
          点击(43, 111)
          mSleep(700)
          点击(300, 111)
          点击2(700, 420)
        else
          点击(40, 180)
        end
      elseif 自动中7x> -1 then
        if 竞技认输==1 then
          点击(43, 111)
          mSleep(700)
          点击(300, 111)
          点击2(700, 420)
        else
          mSleep(3*ttt) -- 点击(10,220)
        end
      elseif 胜利7x> -1 then
        点击(465, 678)
        胜=胜+1
        showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
      elseif 失败7x> -1 then 
        点击(465, 678)
        负=负+1
        showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
      elseif 平局7x> -1 then 
        点击(465, 678)
        平=平+1
        showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
      end
      
      少用界面7()
      
    end
  end
end