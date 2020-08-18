function 结束()
--local et= getNetTime()
--local st=et-kt
--local ft=st/60
--local ket=math.floor(ft)
--胜率=math.floor(胜/(胜+负+平)*100).."%"
if 关机==1 then
  lockDevice();
end
--if 显示结果==1 then
--dialog("  本次统计                               （胜"..胜.."场，负"..负.."场，平"..平.."场，胜率"..胜率.."，投降"..投降次数.."次） 运行时间"..ket.."分钟 （5连胜"..ls5.."次，6连胜"..ls6.."次，7连胜"..ls7.."次，8连胜"..ls8.."次，9连胜"..ls9.."次，10连胜以上"..ls10.."次） 获得"..经验值.."经验（不一定准确%>_<%!!）", 0)	
--end
--lua_exit();
end

function 电()

if 电量提示==1 then
charge,level = getBatteryLevel()
if level~=nil and level~="" and level<=自设电量 and 振动提示==1 then
  for var = 1,5 do
    vibrator(); --振动
    mSleep(1000); --延迟 1 秒
  end
  振动提示=0
end
end


if 电量关机==1 then
charge,level = getBatteryLevel()
if level~=nil and level~="" and level<=自设电量 then
  dialog("电量低于设定值，脚本停止运行", 5)
  结束()
  lua_exit()
end
end
end

function 连胜数统计()
if 连s==5  then
ls5=ls5+1
elseif 连s==6 then
ls6=ls6+1
elseif 连s==7 then
ls7=ls7+1
elseif 连s==8 then
ls8=ls8+1
elseif 连s==9 then
ls9=ls9+1
elseif 连s>=10 then
ls10=ls10+1
end
连s=0
end

function 查找界面(	t)
keepScreen(true) 
for _,v in pairs(t) do 
界面(v[1],v[2],v[3],v[4],v[5],v[6],v[7],v[8]) 
end
keepScreen(false)
end

function 界面(位置,a1,a2,a3,a4,a5,a6,a7)   --界面函数集，括号为下面
x, y = findMultiColorInRegionFuzzy(a1,a2,a3,a4,a5,a6,a7);
if x > -1 then
当前界面=位置    --位置就是当前界面也等于"名称"
end
end

function 点击(x,y)  --点击函数集
touchDown(1,x,y)
mSleep(100)
touchUp(1,x,y) 
mSleep(ttt)
end

function 点击3(e,f)  --点击函数集
touchDown(1,e,f)
mSleep(100)
touchUp(1,e,f) 
mSleep(ttt/2)
end

function 红包(x,y)  --点击函数集
touchDown(1,x,y)
mSleep(50)
touchUp(1,x,y)
end

function 点击2(c,d)  --点击函数集
touchDown(1,c,d)
mSleep(100)
touchUp(1,c,d) 
mSleep(2*ttt)
end

function 选取(m,n,jj,cd)  --点击函数集
touchDown(1, m, n)
mSleep(50)
for iii=jj,cd,jj do
touchMove(1, m, n+iii)
mSleep(10)
end
touchUp(1, m, n+cd)
mSleep(300)
end

function 选取2(m,n,jj,cd)  --点击函数集
touchDown(1, m, n)
mSleep(50)
for iii=jj,cd,jj do
touchMove(1, m, n+iii)
mSleep(10)
end
touchUp(1, m, n+cd)
mSleep(300)

touchDown(1, 1280, 500)
mSleep(50)
touchUp(1, 1280, 500)
mSleep(100)
end

function 适配UI(ui,width)
local content
local value
local json=require "JSON"
local w, h= getScreenSize() --获取设备分辨率
sf=w/width --当前分辨率/开发分辨率
local function split(szFullString, szSeparator)  
local nFindStartIndex = 1  
local nSplitIndex = 1  
local nSplitArray = {}  
while true do  
local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
if not nFindLastIndex then  
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))  
break  
end  
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)  
nFindStartIndex = nFindLastIndex + string.len(szSeparator)  
nSplitIndex = nSplitIndex + 1  
end  
return nSplitArray  
end
local function bltb(t) --遍历table修改
for k,v in pairs(t) do
if type(v)=='table' then
bltb(v) --递归调用到所有子table
else
if k=='size' then --字体按比例缩放
t[k]=math.ceil(v*sf) 
elseif k=='rect' then --位置和大小按比例缩放
local arr={}
arr=split(v,',')
arr[1]=math.ceil(arr[1]*sf)
arr[2]=math.ceil(arr[2]*sf)
arr[3]=math.ceil(arr[3]*sf)
arr[4]=math.ceil(arr[4]*sf)
t[k]=arr[1]..','..arr[2]..','..arr[3]..','..arr[4]
end
end
end
end
content=getUIContent(ui) 
mSleep(1000)
value=json:decode(content) 
value.width=math.ceil(value.width*sf)
value.height=math.ceil(value.height*sf)
bltb(value)
return json:encode(value)
end

function beforeUserExit()
if jr==1 then
local et= getNetTime()
local st=et-kt
local ft=st/60
local ket=math.floor(ft)
胜率=math.floor(胜/(胜+负+平)*100).."%"
if 显示结果==1 then
dialog("  本次统计                               （胜"..胜.."场，负"..负.."场，平"..平.."场，"..瓶子.."个瓶子，".."胜率"..胜率.."，投降循环"..投降次数.."次） 运行时间"..ket.."分钟 （5连胜"..ls5.."次，6连胜"..ls6.."次，7连胜"..ls7.."次，8连胜"..ls8.."次，9连胜"..ls9.."次，10连胜以上"..ls10.."次） 获得"..经验值.."经验（不一定准确%>_<%!!）"..闪退次数, 0)	
end
end
if 记录兑换==1 then
setStringConfig("兑换剩余码",剩余码)
end
end

function 连降UI参数()

ret3,UILJ=showUI('uilj.json')

if ret3 == 0 then  --当前图框点击取消的时候
	lua_exit()
end

if UILJ["107"]=="" or UILJ["107"]==nil then
  dialog("你没设置需要分数，默认800分",3)
  设置加分分数=800
else
  设置加分分数=getNumberConfig("UI连降",tonumber(UILJ["107"]))
end

if UILJ["106"]=="" or UILJ["106"]==nil then
  dialog("你没设置需要分数，默认1200分",3)
  设置投降分数=1200
else
  设置投降分数=getNumberConfig("UI连降",tonumber(UILJ["106"]))
end

if UILJ["108"]=="" or UILJ["108"]==nil then
  dialog("你没设置每次连胜最多吃几个瓶子，默认2个",3)
  设置连胜瓶子个数=2
else
  设置连胜瓶子个数=getNumberConfig("UI连降",tonumber(UILJ["108"]))
end

if UILJ["192"]=="" then  
  防连胜=0
else
  防连胜=1
end


end

function 连胜UI参数()

ret4,UILS=showUI('uils.json')

if ret4 == 0 then  --当前图框点击取消的时候
  lua_exit()
end

if UILS["108"]=="" or UILS["108"]==nil then
  dialog("你没设置需要分数，默认800分",3)
  连胜降分分数=800
else
  连胜降分分数=getNumberConfig("UI胜场",tonumber(UILS["108"]))
end

if UILS["109"]=="" or UILS["109"]==nil then
  dialog("你没设置瓶子数，默认0个",3)
  可用瓶子数=0
else
  可用瓶子数=getNumberConfig("UI胜场",tonumber(UILS["109"]))
end

ss=UILS["110"]
no0=string.find(ss,"0")
no1=string.find(ss,"1")
no2=string.find(ss,"2")
no3=string.find(ss,"3")
no4=string.find(ss,"4")
no5=string.find(ss,"5")
no6=string.find(ss,"6")
no7=string.find(ss,"7")
no8=string.find(ss,"8")
no9=string.find(ss,"9")

if ss=="" or ss==nil then
  连胜数=9999999
end
if no0~="" and no0~=nil then
  连胜数5=5
	else
	连胜数5=9999999
end
if no1~="" and no1~=nil then
  连胜数6=6
		else
	连胜数6=9999999
end
if no2~="" and no2~=nil  then
  连胜数7=7
		else
	连胜数7=9999999
end
if no3~=""  and no3~=nil then
  连胜数8=8
		else
	连胜数8=9999999
end
if no4~="" and no4~=nil  then
  连胜数9=9
		else
	连胜数9=9999999
end
if no5~="" and no5~=nil  then
  连胜数10=10
		else
	连胜数10=9999999
end
if no6~="" and no6~=nil  then
  连胜数12=12
		else
	连胜数12=9999999
end
if no7~="" and no7~=nil then
  连胜数10以上=10
		else
	连胜数10以上=9999999
end
if no8~="" and no8~=nil then
  连胜数15以上=15
		else
	连胜数15以上=9999999
end
if no9~="" and no9~=nil then
  连胜数20以上=20
		else
	连胜数20以上=9999999
end

end

function 竞技黑暗UI参数()

ret5,UIJJHA=showUI('uijjha.json')

if ret5 == 0 then  --当前图框点击取消的时候
  lua_exit()
end

if UIJJHA["501"]=="" then  
  用钱=0
else
  用钱=1
end

if UIJJHA["502"]=="" then  
  自动牌组=0
else
  自动牌组=1
end

if UIJJHA["503"]=="" then  
  自动选人物=0
else
  自动选人物=1
end

if UIJJHA["504"]=="" then  
  竞技认输=0
else
  竞技认输=1
end

if UIJJHA["505"]=="" or UIJJHA["505"]==nil then
  dialog("你没设置胜利场数，默认10场", 3)
  设置胜场jjha=10
else
  设置胜场jjha=getNumberConfig("UI胜场jjha",tonumber(UIJJHA["505"]))   --创建一个名字以UI胜场为定义名称字符串，数值为 UI窗口103里面的数值 结果就是数值
end

end

function 兑()

ret6,UIDHM=showUI('uidhm.json')

if ret6 == 0 then  --当前图框点击取消的时候
  lua_exit()
end

if UIDHM["049"]~="" then    
    if UIDHM["049"]== "0" then 
      lua_exit()
    elseif UIDHM["049"]== "1" then
      剩余=1
    elseif UIDHM["049"]== "2" then
			mSleep(10)		
    end
  end

end

-- 确认使用
local function confirmBottle()
    sysLog('是否确认使用瓶子')
    mSleep(1000)
    local x, y = findColor(
        {328, 226, 1003, 524}, 
        "0|0|0x8d92b8,-8|262|0x3e4357,629|265|0xb7b9ce,630|9|0x5d6178,229|177|0xffbb3c,409|179|0x526832,314|272|0x5e627b,309|-1|0x525469",
        90, 0, 0, 0
    )
    if x > -1 then
        mSleep(500)
        点击(760, 425)
        sysLog('已使用瓶子')
        瓶子=瓶子+1
        mSleep(500)
    end
end

-- 使用瓶子
function 使用瓶子()
  local x, y = findColor(
      {591, 432, 979, 536}, 
      "0|0|0xb1bfe6,-1|82|0xc0d7e8,365|2|0xe7effa,368|80|0xc6d0f8,12|12|0x305033,67|67|0x424344,66|19|0x19191d,26|56|0x1fd039,331|39|0x22304c",
      90, 0, 0, 0
  )
  if x > -1 then
      mSleep(500)
      点击(860, 488)
      sysLog('已点击瓶子')
      confirmBottle()
      mSleep(500)
  end
end