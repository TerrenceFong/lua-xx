local tab = require('common.tab')

local ttt = 800

local function jiangli1()
    mSleep(2 * ttt)
    tab(80, 20)--返回主页面

    mSleep(2 * ttt)
    tab(655, 201) --清除每日任务

    mSleep(2 * ttt)
    tab(1280, 100) --点击签到

    mSleep(2 * ttt)
    tab(950, 633) --点击签到

    mSleep(2 * ttt)
    tab(1000, 270)  --点击领奖

    mSleep(2 * ttt)
    tab(666, 678)   --返回

    mSleep(2 * ttt)
    tab(1125, 60)
end

local function jiangli()
    mSleep(ttt)
    -- 5胜宝箱
    tab(480,555)  --进入每日领奖
    mSleep(ttt)
    tab(725,375)   --领取1
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(725,375)   --领取2
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(725,375)   --领取3
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(725,375)   --领取4
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(725,375)   --领取5
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    -- 赛季宝箱
    tab(250,260)  --进入赛季宝箱
    mSleep(ttt)
    tab(735,355)   --领取1
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(735,355)   --领取2
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(735,355)   --领取3
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(735,355)   --领取4
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(735,355)   --领取5
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(735,355)   --领取6
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(1111,80)    --结束每日领奖回到决斗场

    -- 返回主界面
    mSleep(ttt)
    tab(90,25)

    mSleep(2*ttt)
    tab(666,190)   --清除每日任务

    -- 点击任务领取
    mSleep(ttt)
    tab(945,100)

    -- 底部5个奖励
    mSleep(ttt)
    tab(1028,640)   --点击任务领取5
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(850,640)   --点击任务领取4
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(660,640)   --点击任务领取3
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(485,640)   --点击任务领取2
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(300,640)   --点击任务领取1
    mSleep(ttt)
    tab(666,678)   --返回

    -- 顶部5个奖励
    mSleep(ttt)
    tab(390,155)   --点击宝箱领取1
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(500,155)   --点击宝箱领取2
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(615,155)   --点击宝箱领取3
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(730,155)   --点击宝箱领取4
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(900,155)   --点击宝箱领取5
    mSleep(ttt)
    tab(666,678)   --返回

    -- 中间3个奖励
    mSleep(ttt)
    tab(390,355)   --点击中间宝箱领取1
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(620,355)   --点击中间宝箱领取2
    mSleep(ttt)
    tab(666,678)   --返回
    mSleep(ttt)
    tab(900,355)   --点击中间宝箱领取3
    mSleep(ttt)
    tab(666,678)   --返回

    mSleep(ttt)
    tab(1119,70)   --返回主界面

    -- 邮件的奖励
    mSleep(2 * ttt)
    tab(1190,100)   -- 进入邮件
    mSleep(ttt)
    tab(320,350)   -- 点击奖励
    mSleep(ttt)
    tab(1015,228)   --领取奖励
    mSleep(ttt)
    tab(666,678)   --返回

    mSleep(ttt)
    tab(1119,100)   --返回主界面

    mSleep(ttt)
end

return jiangli