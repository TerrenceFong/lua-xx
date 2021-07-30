local bb = require('badboy')
require("fun集")

bb.loaduilib()
local json = bb.getJSON()

------------------------------------------------------------------------------------------------------------------------------------------
function 初始定义()

屏幕方向 = getScreenDirection()

init("0", 1); --以当前应用 Home 键在右边初始化

--dialog("1月15号起，本脚本取消，只供群成员使用，只有通过群验证的才能进群", 0)
--lua_exit()

---------------------------------------------------------------------------


--ret000,UIYZZZ=showUI('uiyzzz.json')

--if ret000 == 0 then  --当前图框点击取消的时候

--else

--if UIYZZZ["9999"]~="" then  
--width,height = getScreenSize() 
--if (width==640 and height==1136) or (width==1242 and height==2208) or (width==750 and height==1334) then
--  setScreenScale(640,1136)
--	hbxx=620
--	hbyy=300
--elseif (width==768 and height==1024) or (width==1536 and height==2048) or (width==2048 and height==2732) or (width==1668 and height==2224) then
--  setScreenScale(1536,2048)
--	hbxx=1120
--	hbyy=730
--else
--  lua_exit()
--end
--
--红h = createHUD()
--showHUD(红h,"抢红包中",20,"0xffff0000","0xffffffff",0,150,0,150,20)
--for hongbao=1,1500,1 do
--红包(hbxx,hbyy)
--end
--lua_exit()
--end

--if UIYZZZ["1000"]=="2019" then  
--  mSleep(100)
--else
--  dialog("验证码错误", 3)
--  lua_exit()
--end
--end
-------------------------------------------------


当前界面=""
找颜色=findMultiColorInRegionFuzzy
kt= getNetTime()

ui=适配UI('ui.json',1000) 
ret,UI=showUI(ui)

jr=0
胜=0  
负=0
平=0
瓶子=0
领奖场次=0
投降次数=0
经验值=0
连s=0
ls5=0
ls6=0
ls7=0
ls8=0
ls9=0
ls10=0
振动提示=1
闪退次数=0
剩余码=getStringConfig("兑换剩余码","")

方向 = getScreenDirection()
setUIOrientation(0)
胜负 = createHUD()

if ret == 0 then  --当前图框点击取消的时候
  lua_exit()
end


--以下为UI设置--
---------------------------------------------------------------------------------------------------------------------------
if UI["103"]=="" or UI["103"]==nil then
  dialog("你没设置胜利场数，默认100场",3)
  设置胜场=100
else
  设置胜场=getNumberConfig("UI胜场",tonumber(UI["103"]))   --创建一个名字以UI胜场为定义名称字符串，数值为 UI窗口103里面的数值 结果就是数值
end

if UI["105"]=="" or UI["105"]==nil then
  dialog("你没设置需要分数，默认1400分",3)
  设置上分分数=1400
else
  设置上分分数=getNumberConfig("UI胜场",tonumber(UI["105"]))
end
---------------------------------------------------------------------------------------------------------------------------
if UI["079"]=="" then  
  显示结果=0
else
  显示结果=1
end

if UI["080"]=="" then  
  关机=0
else
  关机=1
end

if UI["098"]=="" then  
  可手动=0
else
  可手动=1
end

if UI["100001"]=="" then  
  转小号=0
else
  转小号=1
end

if UI["100002"]=="" then  
  吃瓶子=0
else
  吃瓶子=1
end

if UI["100003"]=="" then  
  调整位置=0
else
  调整位置=1
end
---------------------------------------------------------------------------------------------------------------------------
if UI["099"]=="" then  
  可领奖=0
else
  可领奖=1
end

if UI["082"]=="" then  
  转上分=0
else
  转上分=1
end

if UI["081"]=="" then  
  可冒险=0
else
  可冒险=1
end

if UI["236"]=="" then  
  闪退=0
else
  闪退=1
end

if UI["102"]=="" or UI["102"]==nil then  --假如UI窗口102没有选择打√
  在线领奖次数=0
else
  if UI["104"]~="" then     ---单选模式设置
    if UI["104"]== "0" then      ----0为第一个名称
      在线领奖次数=0
    elseif UI["104"]== "1" then  ----0为第二个名称
      在线领奖次数=1
    elseif UI["104"]== "2" then  ----0为第二个名称
      在线领奖次数=2		
    elseif UI["104"]== "3" then  ----0为第二个名称
      在线领奖次数=3			
    elseif UI["104"]== "4" then  ----0为第二个名称
      在线领奖次数=4		
    elseif UI["104"]== "5" then  ----0为第二个名称
      在线领奖次数=5			
    end
  end
end
---------------------------------------------------------------------------------------------------------------------------
if UI["123"]~="" then    
  if UI["123"]== "0" then     
    ttt=1200
  elseif UI["123"]== "1" then  
    ttt=800
  elseif UI["123"]== "2" then  
    ttt=600	
  elseif UI["123"]== "3" then  
    ttt=400	
  end
end

---------------------------------------------------------------------------------------------------------------------------
if UI["160"]=="" then  
  电量提示=0
else
  电量提示=1
end

if UI["161"]=="" then  
  电量关机=0
else
  电量关机=1
end

if UI["162"]~="" then    
  if UI["162"]== "0" then     
    自设电量=21
  elseif UI["162"]== "1" then  
    自设电量=30
  elseif UI["162"]== "2" then  
    自设电量=40
  end
end

---------------------------------------------------------------------------------------------------------------------------

--if 屏幕方向~=1 then
--  dialog("屏幕方向不对，HOME键在屏幕右方才能运行脚本，运行过程中不能旋转屏幕", 0)
--  lua_exit()
--end

if UI["000"]=="0" then
  require("i5s界面")
  require("i4s界面")
  require("i7界面")	
  require("点测试")
  require("ipad界面")
  测试点()
end
---------------------------------------------------
if UI["010"]=="0" and UI["101"]== "8" then
  lua_exit()
end
if UI["010"]=="1" and UI["101"]== "8" then
  dialog("赠神器", 5)
  require("神器5s")
  赠神器5s()	
end
if UI["010"]=="2" and UI["101"]== "8" then
  dialog("领神器", 5)
  require("神器5s")
  领神器5s()
end	
if UI["010"]=="4" and UI["101"]== "8" then
  dialog("领神器", 5)
  require("神器ipad")
  领神器ipad()
end
if UI["010"]=="3" and UI["101"]== "8" then
  dialog("赠神器", 5)
  require("神器ipad")
  赠神器ipad()	
end

if UI["010"]=="5" and UI["101"]== "8" then
  连胜UI参数()
  require("ipad界面")
	require("ipad瓶子模式")
	if UI["100"]~="" then    
  if UI["100"]== "0" then 
    dialog("你选择了0点开始运行,由现在开始直到0点，脚本不做任何反应，可任意控制，0点以后，脚本自动开始执行，不需要请把√去除", 10)	
    for dd=1,360,1 do
      
      t = getNetTime()
      零点=tonumber(t%86400)
      
      if 零点~=nil and 零点~="" and 零点>=57600 and 零点<=61200 then
        break
      else
        mSleep(60000)
      end
      
    end 
  end
end
  ipad瓶子模式()
end

if UI["010"]=="6" and UI["101"]== "8" then
  require("ipad界面")
  require("ipad小号刷神器")
	ipad小号刷神器()
end

if UI["010"]=="7" and UI["101"]== "8" then
  dialog("7赠神器", 5)
  require("神器7")
  赠神器7()
end
if UI["010"]=="8" and UI["101"]== "8" then
  dialog("7领神器", 5)
  require("神器7")
  领神器7()
end

--if getStringConfig("UI胜场",UI["010"])=="qqqk5s" and UI["101"]== "8" then
--dialog("卡牌测试5s", 5)
--      require("卡牌测试5s")
--      卡牌测试5s()
--			end
---------------------------------------------------			

if UI["100"]~="" then    
  if UI["100"]== "0" then 
    dialog("你选择了0点开始运行,由现在开始直到0点，脚本不做任何反应，可任意控制，0点以后，脚本自动开始执行，不需要请把√去除", 10)	
    for dd=1,360,1 do
      
      t = getNetTime()
      零点=tonumber(t%86400)
      
      if 零点~=nil and 零点~="" and 零点>=57600 and 零点<=61200 then
        break
      else
        mSleep(60000)
      end
      
    end 
  end
end

if UI["100004"]~="" then    
  sysLog('定时挂机')
  if UI["100004"]== "0" then 
    local rootview = RootView:create({style = ViewStyle.CUSTOME, width = 660, height = 600})

		local label = Label:create("Label", {color = "0, 0, 225", size = 30})
		label.text = "----------------设置时间----------------"
		local editHour = Edit:create("editHour", {color = "0, 0, 0", size = 20, prompt = "默认小时 02"})
		editHour.align = TextAlign.LEFT
		local editMin = Edit:create("editMin", {color = "0, 0, 0", size = 20, prompt = "默认分钟 30"})
		editMin.align = TextAlign.LEFT

		rootview:addView(label)    --把page添加到rootview
		rootview:addView(editHour)
		rootview:addView(editMin)

		local uijson = json.encode(rootview)
		local UIRet, UIResults = showUI(uijson)

		if UIRet == 0 then
			toast("取消定时")
      lua_exit()
		elseif UIRet == 1 then
			local hour = (UIResults.editHour ~= "" and {tonumber(UIResults.editHour)} or {2})[1]
			local minute = (UIResults.editMin ~= "" and {tonumber(UIResults.editMin)} or {30})[1]
			
			local nowTime = os.time()
			local dateTable = os.date("*t", nowTime)
			dateTable.hour = hour
			dateTable.min = minute
			dateTable.sec = 0

			local targetTime = os.time(dateTable)
			
			local countdown = targetTime - nowTime
			print('倒计时：'..countdown)

      -- 开始休眠
			mSleep(countdown * 1000)
      print('休眠结束，开始执行预设任务')
		end
  end
end


--------------------------------------------------------------------------------------
--以下为画面比例设置跟执行--

width,height = getScreenSize()   --读取屏幕分辨率
if (width==640 and height==1136) or (width==1242 and height==2208) then
  setScreenScale(640,1136)
  require("i5s界面")
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,350,20)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
  end
  if UI["101"]~="" then     
    if UI["101"]== "0" then  
      require("w无限模式5s")
      无限战斗5s()
    elseif UI["101"]== "1" then
      require("s上分模式5s")		
      上分模式5s() 
    elseif UI["101"]== "2" then
      连降UI参数()
      require("p分段模式5s")
      分段模式5s()
    elseif UI["101"]== "3" then
      连胜UI参数()
      require("Q连胜模式5s")
      连胜模式5s()
    elseif UI["101"]== "4" then
      require("m冒险模式5s")
      冒险模式5s()	
    elseif UI["101"]== "5" then
      竞技黑暗UI参数()
      require("R竞技之门5s")
      竞技之门5s	()	
    elseif UI["101"]== "6" then
      竞技黑暗UI参数()
      require("H黑暗决斗5s")
      黑暗决斗5s()
    elseif UI["101"]== "7" then
      --     require("神器5s")
      --      赠神器5s()	
      --	  elseif UI["101"]== "8" then
      --      require("神器5s")
      --      领神器5s()	
      --		elseif UI["101"]== "9" then
      兑()
      require("dhm")
      require("jhm5s")
      激活码5s()
    end
  end
elseif (width==640 and height==960) then
  setScreenScale(640,960)
  require("i4s界面")
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场 "..经验值.."经验",15,"0xffff0000","0xffffffff",0,50,0,350,15)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
  end
  if UI["101"]~="" then 
    if UI["101"]== "0" then		
      require("w无限模式4s")
      无限战斗4s()
    elseif UI["101"]== "1" then
      require("s上分模式4s")		
      上分模式4s() 
    elseif UI["101"]== "2" then
      连降UI参数()
      require("p分段模式4s")
      分段模式4s()
    elseif UI["101"]== "3" then
      连胜UI参数()
      require("Q连胜模式4s")
      连胜模式4s()
    elseif UI["101"]== "4" then
      require("m冒险模式4s")
      冒险模式4s()	
    elseif UI["101"]== "5" then
      dialog("不支持", 5)
      lua_exit()	
    elseif UI["101"]== "6" then
      dialog("不支持", 5)
      lua_exit()	
    elseif UI["101"]== "7" then
      --      dialog("不支持", 5)
      --      lua_exit()
      --		elseif UI["101"]== "8" then
      --      dialog("不支持", 5)
      --      lua_exit()
      --		elseif UI["101"]== "9" then
      兑()
      require("dhm")
      require("jhm4s")
      激活码4s()
    end
  end
elseif (width==750 and height==1334) then
  setScreenScale(750,1334)
  require("i7界面")
  if UI["101"]~= "10" then
    if 显示结果==1 then 
      showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
    else
      showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
    end	
  end	
  if UI["101"]~="" then 
    if UI["101"]== "0" then
      require("w无限模式7")
      无限战斗7()
    elseif UI["101"]== "1" then
      require("s上分模式7")		
      上分模式7()
    elseif UI["101"]== "2" then
      连降UI参数()
      require("p分段模式7")
      分段模式7()
    elseif UI["101"]== "3" then
      连胜UI参数()
      require("Q连胜模式7")
      连胜模式7()
    elseif UI["101"]== "4" then
      require("m冒险模式7")
      冒险模式7()
    elseif UI["101"]== "5" then
      竞技黑暗UI参数()
      require("R竞技之门7")
      竞技之门7()			
    elseif UI["101"]== "6" then
      竞技黑暗UI参数()
      require("H黑暗决斗7")
      黑暗决斗7()	
    elseif UI["101"]== "7" then
      --			dialog("不支持", 5)
      --      lua_exit()
      --      require("神器7")
      --      赠神器7()	
      --		elseif UI["101"]== "8" then
      --			dialog("不支持", 5)
      --      lua_exit()
      --     require("神器7")
      --     领神器7()	
      --		elseif UI["101"]== "9" then
      兑()
      require("dhm")
      require("jhm7")
      激活码7()	
    elseif UI["101"]== "9" then
      竞技黑暗UI参数()
      require("Y决斗都市7")
      决斗都市7()
    elseif UI["101"]== "10" then
      红h = createHUD()
      showHUD(红h,"抢红包中",20,"0xffff0000","0xffffffff",0,150,0,150,20)
      setScreenScale(640,1136)
      hbxx=590
      hbyy=300
      for hongbao=1,10000,1 do
        sysLog(hongbao)
        红包(hbxx,hbyy)
        红包(hbxx-10,hbyy)
        红包(hbxx+10,hbyy)
      end
      lua_exit()
    end
  end
elseif (width==768 and height==1024) or (width==1536 and height==2048) or (width==2048 and height==2732) or (width==1668 and height==2224) then
  setScreenScale(1536,2048)
  require("ipad界面")
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,150,0,500,20)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场 ".."平 "..平.."场 ",25,"0xffff0000","0xffffffff",0,200,0,400,25)	
  end	
  if UI["101"]~="" then 
    if UI["101"]== "0" then
      require("w无限模式ipad")
      无限战斗ipad()
    elseif UI["101"]== "1" then
      require("s上分模式ipad")
      上分模式ipad() 
    elseif UI["101"]== "2" then
      连降UI参数()
      require("p分段模式ipad")
      分段模式ipad()
    elseif UI["101"]== "3" then
      连胜UI参数()
      require("Q连胜模式ipad")
      连胜模式ipad()
    elseif UI["101"]== "4" then
      require("m冒险模式ipad")
      冒险模式ipad()
    elseif UI["101"]== "5" then
      竞技黑暗UI参数()
      require("R竞技之门ipad")		
      竞技之门ipad()			
    elseif UI["101"]== "6" then
      竞技黑暗UI参数()
      require("H黑暗决斗ipad")
      黑暗决斗ipad()		
    elseif UI["101"]== "7" then
      --     require("神器ipad")
      --      赠神器ipad()	
      --		elseif UI["101"]== "8" then
      --     require("神器ipad")
      --      领神器ipad()	
      --		elseif UI["101"]== "9" then
      兑()
      require("dhm")
      require("jhmipad")
      激活码ipad()	
    end
  end
else
  dialog("不支持此分辨率", 3)
  mSleep(1000)
  lua_exit(); --否则退出脚本
end	
end
--------------------------------------------------------------------------------------------------------------------------------------------
初始定义() --执行这个函数