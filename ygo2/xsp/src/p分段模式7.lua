function 分段模式7()  --7图片参数 可认输
连sss=0

已经失败次数 = 0
-- 0 / 1
本局已经失败 = 0

function  经验()
  if 显示结果==1 then
    
    mSleep(ttt)
    
    keepScreen(true);
    
    colorTbl = binarizeImage({
        rect = {1033,328,1093,351},
        diff = {"0xd2f9a1-0x101010"}
      })
    
    -- for _, row in pairs(colorTbl) do
    --   sysLog(table.concat(row, ','))
    -- end
    
    local ocr, msg = createOCR({
        type = "tesseract"
      })
    
    local code, 经验w = ocr:getText({
        data = colorTbl,
        psm = 7, -- 单个字符模式识别
        whitelist = "0123456789"
      })
    
    keepScreen(false);
    
    ocr:release()

    if 经验w~="" and 经验w~=nil then
      if tonumber(string.sub(经验w,2))~="" and tonumber(string.sub(经验w,2))>0 then
        经验值=经验值+tonumber(string.sub(经验w,2))
      end
    end
      jr=1
    mSleep(200)
  end
end

function  在线领奖7()
  mSleep(2*ttt)
  if 领奖场次>=15 and 在线领奖次数>=1 then
    mSleep(2*ttt)
    点击(80,20)--返回主页面
    mSleep(2*ttt)
    点击(655,201) --清除每日任务
    mSleep(2*ttt)
    点击(1280,100) --点击签到
    mSleep(2*ttt)
    点击(950,633) --点击签到
    mSleep(2*ttt)
    点击(1000,270)  --点击领奖
    mSleep(2*ttt)
    点击(666,678)   --返回
    mSleep(2*ttt)
    点击(1125, 60)
    在线领奖次数=在线领奖次数-1
    领奖场次=0
  end 
end

while true do
电()
常用界面7()
不常用界面7()
mSleep(ttt)	

if 胜>=设置胜场 then   --假如胜利场数达到UI里面设置的胜场数
  mSleep(100)
  可领奖7()
  可领奖=0
  mSleep(ttt)
  if 转上分==1 then
    require("s上分模式7")
    上分模式7()
  end	
  if 可冒险==1 then
    require("m冒险模式7")
    冒险模式7(转小号)
  end
  if 转小号==1 then
    require("w小号30胜")
    小号30胜()
  end
  结束()
  lua_exit();
end


function  法老遗产7()
  mSleep(ttt)

  keepScreen(true);

  colorTbl = binarizeImage({
    rect = {790,19,852,41},
    diff = {"0xfffaf0-0x202020","0xfffaf0-0x202020","0xebe7de-0x202020"}
  })

  -- for _, row in pairs(colorTbl) do
  -- sysLog(table.concat(row, ','))
  -- end

  local ocr, msg = createOCR({
    type = "tesseract"
  })

  local code, 分值7 = ocr:getText({
    data = colorTbl,
    psm = 7, -- 单个字符模式识别
    whitelist = "0123456789"
  })

  keepScreen(false);

  ocr:release()

  -- 错误保护
  xpcall(function()
    数字7 = tonumber(分值7)
    sysLog('数字7 1: '..数字7)
  end, function(e)
    sysLog('数字转换出错: '..e)
    数字7 = 1300
  end)

  sysLog('数字7: '..数字7)

  if 数字7 <= 300 then
    -- 补充后的数字
    数字7 = 数字7 + 1000
    sysLog('补充后的数字7: '..数字7)
  end

  mSleep(200)
end
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------
function 降分()
  while true do 
    电()
    常用界面7()
    不常用界面7()
    mSleep(ttt)

    if 主界面7x> -1 then
      点击2(1010, 370)
    elseif 决斗场7x> -1  then
      mSleep(ttt)
      法老遗产7()
      if 数字7~=nil and  数字7~="" and 数字7<=设置加分分数 then
        sysLog('降到最低分后, 开始重新打')
        已经失败次数 = 0
        本局已经失败 = 0
        点击(780,570)
        mSleep(ttt)
        -- return(降分5s)
        -- 跳出 降分函数 的循环
        return
      end
      点击(780, 570)
      mSleep(ttt)
      -- 开始投降
      for xs=1,80,1 do
        mSleep(ttt)
        常用界面7()
        if 手动中7x> -1 then
          sysLog('投降1')
          点击(43, 111)
          mSleep(700)
          投降位置7()
          点击(投降位置7x, 投降位置7y)
          点击2(700, 420)
          mSleep(3000)		
          break
        end
      end
    elseif 手动中7x> -1 then
      sysLog('投降2')
      点击(43, 111)
      mSleep(700)
      投降位置7()
      点击(投降位置7x, 投降位置7y)
      点击2(700, 420)
    elseif 胜利7x> -1 then 
      mSleep(ttt/2)
      经验()
      if 调整位置==1 then
        点击(667, 678)
      else
        点击(465, 678)
      end
      胜=胜+1
      if 显示结果==1 then 
        showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
      else
        showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
      end		
    elseif 失败7x> -1 then
      sysLog('降分失败')
      if 调整位置==1 then
        点击(667, 678)
      else
        点击(465, 678)
      end
      连s=0
    elseif 平局7x> -1 then
      if 调整位置==1 then
        点击(667, 678)
      else
        点击(465, 678)
      end
    elseif 零点重置7x> -1 then
      胜= 0
      负= 0
      平= 0
      领奖场次=0
      在线领奖次数=5
      点击2(660,430)
    end

    少用界面7()
    防闪退7()
  end
end
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------

if 主界面7x> -1 then
  点击2(1010, 370)
elseif 决斗场7x> -1 and 可手动==1  then
  sysLog(1111)
  mSleep(ttt)	  
  法老遗产7()

  -- if 数字7~=nil then
  --   if 数字7 >= 设置投降分数 then
  --     sysLog('数字7 >= 设置投降分数1')
  --     点击(780,570)
  --     mSleep(ttt)
  --     if  防连胜==1 then
  --       if 连sss<3 then
  --         投降次数=投降次数+1
  --         降分()
  --       end
  --     elseif 防连胜==0 then
  --       投降次数=投降次数+1
  --       降分()
  --     end
  --   end
  -- end

  if 防连胜 == 1 then
    降分()
    防连胜 = 0
  end

  if 本局已经失败 == 1 and 已经失败次数 > 设置连胜瓶子个数 and 胜 <= (设置胜场 - 10) then
    降分()
  end

  if 已经失败次数 <= 设置连胜瓶子个数 then
    使用瓶子()
  end
  点击(780, 570)
  mSleep(ttt)
  -- 切换成自动
  sysLog('切换成自动')
  for xx=1,80,1 do
    mSleep(ttt)
    常用界面7()
    if 手动中7x> -1 then
      点击(40, 180)
      break
    end
  end
elseif 决斗场7x> -1 and 可手动==0  then
  -- 新的一局战斗
  sysLog('新的一局战斗')
  mSleep(ttt)
  法老遗产7()

  -- if 数字7~=nil then
  --   if 数字7 >= 设置投降分数  then
  --     sysLog('数字7 >= 设置投降分数2')
  --     点击(780,570)
  --     mSleep(ttt)
  --     if 防连胜==1 then
  --       if 连sss<3 then
  --         降分()
  --       end
  --     elseif 防连胜==0 then
  --       降分()
  --     end
  --   end
  -- end

  if 防连胜 == 1 then
    降分()
    防连胜 = 0
  end

  if 本局已经失败 == 1 and 已经失败次数 > 设置连胜瓶子个数 and 胜 <= (设置胜场 - 10) then
    降分()
  end

  if 已经失败次数 <= 设置连胜瓶子个数 then
    sysLog('使用瓶子2')
    使用瓶子()
  end
  点击(780, 570)
elseif 手动中7x> -1 and 可手动==0  then
  点击(40, 180)
elseif 自动中7x> -1 then
  mSleep(3*ttt) --  点击(7, 340)	
elseif 胜利7x> -1 then 
  mSleep(ttt/2)
  经验()
  if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
  领奖场次=领奖场次+1
  胜=胜+1

  本局已经失败 = 0

  连sss=连sss+1
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
  end	
  在线领奖7()
elseif 失败7x> -1 then
  sysLog('战斗失败')
  if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
  领奖场次=领奖场次+1
  连胜数统计()
  负=负+1

  已经失败次数 = 已经失败次数 + 1
  本局已经失败 = 1

  连sss=0
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
  end	
  在线领奖7()
elseif 平局7x> -1 then 
  if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
  领奖场次=领奖场次+1
  平=平+1
  if 显示结果==1 then 
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场 "..经验值.."经验",20,"0xffff0000","0xffffffff",0,100,0,400,20)
  else
    showHUD(胜负,"胜 "..胜.."场 ".."负 "..负.." 场 ".."平 "..平.."场",20,"0xffff0000","0xffffffff",0,150,0,300,20)	
  end	
  在线领奖7()
elseif 零点重置7x> -1 then
  胜= 0
  负= 0
  平= 0
  领奖场次=0
  在线领奖次数=5
  点击2(660,430)
end

少用界面7()
防闪退7()
end
end