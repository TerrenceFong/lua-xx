function ipad小号刷神器()   --iPad mini2 图片参数 可认输
  
  完成数=0
  
  
  
  if UI["10001"]=="" or UI["10001"]==nil then
    lua_exit(); --否则退出脚本
  else
    账号1=getStringConfig("UI胜场",UI["10001"])
  end
  
  if 账号1=="dwx2786" then
    密码1="Dwx19860127"
  end
  
  
  if UI["10002"]=="" or UI["10002"]==nil then
    lua_exit(); --否则退出脚本
  else
    账号2=getStringConfig("UI胜场",UI["10002"])
  end
  
  if 账号2=="deng3666" then
    密码2="dwx19860127"
  end
  
  while true do
    
    --hb = getNetTime()
    --hb2=hb%1800
    --if  hb2>1794 and hb2<1800 then
    --dialog(hb2, 5)
    --for hongbao=1,200,1 do
    --红包(1120,730)
    --end
    --end
    
    常用界面ipad()
    不常用界面ipad()
    mSleep(ttt)  
    
    if 胜>=30 then
      mSleep(100)
      完成数=完成数+1
      胜=0
      负=0
      平=0
      进入有效=1
      
			------------------------------------------------------------
			if 可冒险==1 then
require("m冒险模式ipad")
  冒险模式ipad()
end
      ------------------------------------------------------------
			
      if  完成数>=3 then
        jr=1
        胜=99999
        结束()
        lua_exit();
      end
      
      closeApp("com.gamest.fight.city.ol")
      mSleep(2000)
      flag = appIsRunning("com.gamest.fight.city.ol")
      mSleep(1000)
      
      -------------------------------------------------------------------------------------------------
      
      
      if flag == 0 and 完成数==1 then --如果没有运行
        runApp("com.gamest.fight.city.ol")
        mSleep(10000)
        点击(1020,1210)			
        for xx=1,360,1 do
          mSleep(1000)
          fangx, fangy = findMultiColorInRegionFuzzy(0x06b3ee,"116|64|0x06b3ee,433|241|0xc8cac8,89|336|0x46cfe8,376|389|0x0a99b3", 95, 765, 549, 1280, 986, 0, 0)
          if fangx> -1 then
            mSleep(1500)
            touchDown(1, 1150,720)
            mSleep(100)
            touchUp(1, 1150,720) 
            mSleep(1000)
            
            inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
            mSleep(1000)
            --string="dwx2786"    --填写内容
            string=账号1
            
            mSleep(1000)
            inputText(string)  --写入内容
            mSleep(1000)
            点击(1700,720)
            mSleep(3000)
            
            点击(1150,820)
            mSleep(1000)
            inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
            mSleep(1000)
            
            --string="Dwx19860127"    --填写内容
            string=密码1
            
            mSleep(1000)
            inputText(string)  --写入内容
            mSleep(1000)
            点击(1700,720)
            mSleep(3000)
            
            
            touchDown(1, 1020,939)
            mSleep(100)
            touchUp(1, 1020,939)  
            mSleep(1000)
            break
          end
        end
        mSleep(10000)
        点击(1965,625)
        for xxx=1,360,1 do
          mSleep(1000)
          fang2x, fang2y =findMultiColorInRegionFuzzy(0x31535f,"94|-65|0xb0e668,302|-2|0xeeffca,413|-9|0x4f8301,535|-234|0x00ff00", 95, 727, 1089, 1487, 1449, 0, 0) 
          --findMultiColorInRegionFuzzy(0x39606d,"62|-2|0xa6e05b,119|43|0x518802,304|54|0xeeffcb,383|64|0x508404", 95, 749, 1266, 1272, 1457, 0, 0)
          if fang2x> -1 then
            mSleep(1500)
            点击(1010,1360)
            mSleep(1000)
            进入有效=0
            break
          end
        end
      end
      
      
      -------------------------------------------------------------------------------------------------
      
      if flag == 0 and 完成数==2 then --如果没有运行
        runApp("com.gamest.fight.city.ol")
        mSleep(10000)
        点击(1020,1210)			
        for xx=1,360,1 do
          mSleep(1000)
          fangx, fangy = findMultiColorInRegionFuzzy(0x06b3ee,"116|64|0x06b3ee,433|241|0xc8cac8,89|336|0x46cfe8,376|389|0x0a99b3", 95, 765, 549, 1280, 986, 0, 0)
          if fangx> -1 then
            mSleep(1500)
            touchDown(1, 1150,720)
            mSleep(100)
            touchUp(1, 1150,720) 
            mSleep(1000)
            
            inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
            mSleep(1000)
            --string="deng3666"    --填写内容
            string=账号2
            mSleep(1000)
            inputText(string)  --写入内容
            mSleep(1000)
            点击(1700,720)
            mSleep(3000)
            
            点击(1150,820)
            mSleep(1000)
            inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
            mSleep(1000)
            --string="dwx19860127"    --填写内容
            string=密码2
            mSleep(1000)
            inputText(string)  --写入内容
            mSleep(1000)
            点击(1700,720)
            mSleep(3000)
            
            
            touchDown(1, 1020,939)
            mSleep(100)
            touchUp(1, 1020,939)  
            mSleep(1000)
            break
          end
        end
        mSleep(10000)
        点击(1965,625)
        for xxx=1,360,1 do
          mSleep(1000)
          fang2x, fang2y =findMultiColorInRegionFuzzy(0x31535f,"94|-65|0xb0e668,302|-2|0xeeffca,413|-9|0x4f8301,535|-234|0x00ff00", 95, 727, 1089, 1487, 1449, 0, 0) 
          --findMultiColorInRegionFuzzy(0x39606d,"62|-2|0xa6e05b,119|43|0x518802,304|54|0xeeffcb,383|64|0x508404", 95, 749, 1266, 1272, 1457, 0, 0)
          if fang2x> -1 then
            mSleep(1500)
            点击(1010,1360)
            mSleep(1000)
            进入有效=0
            break
          end
        end
        
        
        if 进入有效~=0 or 进入有效=="" then
          结束()
          lua_exit();
        end
        
      end
    end
    
    if 主界面px> -1 then
      点击2(1472,728)
      mSleep(ttt)		
    elseif 决斗场px> -1  then
      点击(1111,1111)
    elseif 手动中px> -1  then
      点击(50,360)
    elseif 自动中px> -1 then
      mSleep(3*ttt) -- 点击(28,537)
    elseif 胜利px> -1 then 
      mSleep(ttt/2)
      点击(620,1380)	
      胜=胜+1
      
    elseif 失败px> -1 then 
      点击(620,1380)
      负=负+1

    elseif 平局px> -1 then
      点击(620,1380)
      平=平+1
	
    end
    
    少用界面p()
    防闪退p()
  end
end