function 卡牌测试5s()
setScreenScale(640,1136)
while true do
while true do

卡组x,卡组y= 找颜色(0x445f7d,"10|-4|0xffed6f,17|5|0x695c00,31|3|0xcfb90d,42|11|0xa29200,51|1|0xf3dd39,66|12|0xa19100", 95, 1003, 479, 1079, 509)

if 卡组x> -1  then
点击2(1070, 400) ---进入推荐
mSleep(1000)
点击2(340, 193) ---选人物
mSleep(1000)
点击2(800, 300) ---选第二个
mSleep(1000)
点击2(890, 130) ---开始
mSleep(2*ttt)
for xx=1,60,1 do
  mSleep(ttt)
手动中x,手动中y= 找颜色(0xc6c4ea,"-3|10|0xfceaaa,5|10|0xfceaaa,9|6|0xa59ceb,4|15|0xf1e0a3", 95, 22, 158, 36, 174)
  if 手动中x> -1 then
    点击(23,146)
    break
  end
end

胜利x,胜利y= 找颜色(0xcd874b,"57|30|0xffffff,79|50|0xcd721f,134|51|0xcd721f", 95, 795, 127, 991, 208)
失败x,失败y= 找颜色(0x40699e,"55|16|0xfefefe,151|33|0x020407,214|33|0x2e5790", 95, 762, 130, 1007, 204)

if 胜利x> -1  then   
点击2(570,580)
胜=胜+1
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
elseif 失败x> -1  then  
点击2(570,580)
负=负+1
showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.."场  ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)
end

end
end
end
end