local login = require('common.login')

function 常用界面7()
主界面7x,主界面7y= 找颜色(0x2d2c39,"12|2|0x141414,27|1|0xe0dcd5,46|1|0x2b2d34", 90, 45, 722, 97, 749)
决斗场7x,决斗场7y= 找颜色(0x1d2f53,"20|0|0xdbdbd9,39|0|0xfdf9ef,67|0|0x41506c", 90, 691, 686, 786, 706)
决斗都市场7x,决斗都市场7y= findColor({9, 470, 213, 689}, 
"0|0|0x1e150c,51|-12|0xd9b291,105|16|0x804e2a,87|57|0x211507,37|56|0xae7a2f,15|116|0xafbabc,46|115|0xfeffff,93|113|0x00244d",
95, 0, 0, 0)
手动中7x,手动中7y= 找颜色(0xffffff,"-21|42|0xf9ebb2,-12|42|0xf9ebb2,-12|55|0xf9ebb2,-3|48|0xf9ebb2", 85, 5, 151, 81, 227)
自动中7x,自动中7y= 找颜色(0xfcfcfe,"-5|8|0xffffff,0|8|0x000001,6|8|0xfdfdfe,0|11|0x000003,0|16|0xd5cffb", 85, 28, 164, 58, 187)
胜利7x,胜利7y= 找颜色(0xc3864f,"38|12|0xffffff,99|18|0x301f10,180|26|0xffffff", 95, 901, 148, 1173, 247)
失败7x,失败7y= 找颜色(0xffffff,"81|-27|0x131a27,169|-31|0xffffff,214|-5|0x101725", 95, 900, 150, 1178, 243)
平局7x,平局7y= 找颜色(0x1d0aa2,"147|12|0xfffaff,249|19|0xfafbf6,368|-31|0xfcfff6", 95, 677, 151, 1135, 243)
零点重置7x,零点重置7y= 找颜色(0xc8fa96,"30|-4|0xcfff99,41|0|0x30324b,59|1|0xfffbf1", 90, 742, 301, 860, 329)
end

function 不常用界面7()
-- 断线7x,断线7y= 找颜色(0x303249,"33|1|0xfefaf0,51|1|0x303249,90|1|0xf6f2ea", 95, 770, 317, 872, 341)
断线7x,断线7y= findColor(
	{329, 216, 1005, 524}, 
	"0|0|0x8d92b8,-7|8|0x302e3e,620|-1|0x8e93b9,629|7|0x2e2d36,310|3|0xb9b9b7,318|36|0x30324b",
	95, 0, 0, 0
)
升级7x,升级7y= 找颜色(0x627495,"36|-1|0x5b688c,20|10|0x364454,32|20|0x58698d", 95, 903, 139, 962, 196)
广告7x,广告7y= 找颜色(0x888daa,"5|0|0x4c4b5e,11|0|0x3d352d,6|3|0xe3e4ee", 95, 190, 657, 205, 682)
今日任务7x,今日任务7y= 找颜色(0xfffbf1,"28|-2|0xfffbf1,53|-1|0xfdf9ef,88|1|0xfffbf1", 95, 347, 528, 452, 555)
认输7x,认输7y= 找颜色(0xfffbf1,"26|-1|0x303249,54|1|0x303249,85|1|0x303249", 95, 401, 327, 512, 357)
签到7x,签到7y= 找颜色(0xf9f9f8,"13|0|0xe6f0f4,5|11|0x526edc,7|16|0x666968", 95, 530, 36, 552, 54)
领奖成功7x,领奖成功7y= 找颜色(0x342e17,"94|3|0xfefefe,176|8|0xffffff,243|13|0x373423", 95, 508, 244, 819, 336)
排行榜7x,排行榜7y= 找颜色(0x212813,"23|0|0xfffbf1,51|0|0xfffbf1,78|1|0xfffbf1", 95, 992, 193, 1094, 221)
冒险7x,冒险7y= 找颜色(0xfffbf1,"6|7|0xfffbf1,15|0|0xfffbf1,19|20|0xfffbf1,7|9|0x151719", 95, 514, 710, 540, 735)
战报7x,战报7y= 找颜色(0xfffbf1,"9|9|0x232619,22|-1|0xfcf8ed,34|1|0x141b07", 95, 980, 152, 1036, 182)
战绩7x,战绩7y= 找颜色(0xfffbf1,"6|0|0xfefaf0,0|5|0xfbf7ee,5|9|0x1e2339", 95, 688, 416, 710, 437)
卡组7x,卡组7y= 找颜色(0xfffbf1,"12|-8|0xfffbf1,35|-1|0xfffbf1,52|17|0x303135", 95, 259, 13, 324, 47)
人物7x,人物7y= 找颜色(0x5d5e62,"1|0|0x4f5056,2|1|0x000001,3|2|0x2f3033,4|3|0x494a4f", 95, 326, 127, 430, 229)
旅行7x,旅行7y= 找颜色(0x060205,"14|5|0xa09d9a,16|8|0x2f3f70,6|13|0x7d6961,22|14|0xaa897a", 95, 113, 346, 143, 364)
角色7x,角色7y= 找颜色(0x605137,"1|2|0x656462,2|4|0xfefbf8,3|5|0xf9f5f1,4|8|0xbbbabb", 95, 66, 337, 76, 348)
段位7x,段位7y= 找颜色(0xe5eff2,"4|2|0xaeb8ba,9|5|0x585f67,15|5|0x0c1a61", 95, 539, 111, 563, 138)
充值7x,充值7y= 找颜色(0xeb9bb0,"5|0|0xea97a9,11|0|0xebf4c4,13|0|0xf7ecc5", 95, 197, 230, 226, 253)
成就7x,成就7y= 找颜色(0x563c7c,"3|0|0x7d4e94,5|4|0xeceef2,9|4|0xeeecf2", 95, 572, 118, 590, 129)
图鉴7x,图鉴7y= 找颜色(0xfffbf1,"8|5|0xcecdca,18|11|0x798086,26|14|0xfffbf1", 95, 642, 108, 686, 137)
教学7x,教学7y= 找颜色(0xf5e9eb,"3|0|0xd2cddb,2|4|0x02082c,5|4|0x0a1d38", 95, 635, 108, 645, 116)
--卡组7x,卡组7y= 找颜色(0xfffbf1,"12|-8|0xfffbf1,35|-1|0xfffbf1,52|17|0x303135", 95, 259, 13, 324, 47)
活动7x,活动7y= 找颜色(0x0b0d16,"4|0|0xfffbf1,11|0|0x0b0d16,0|5|0xbfbcb8,8|9|0x8f8e8c", 95, 260, 27, 275, 41)
金币7x,金币7y= 找颜色(0x421706,"3|1|0xc56d2a,7|1|0x242627,10|1|0x313131", 95, 472, 250, 489, 261)
魔盒7x,魔盒7y= 找颜色(0xe6e4de,"4|1|0x979ea2,8|5|0x495764,11|8|0x020508", 95, 44, 181, 66, 199)
商城7x,商城7y= 找颜色(0xfffbf1,"4|0|0xf4f0e8,6|1|0x3f4c59,8|2|0x5e6972", 95, 63, 146, 75, 151)
社团7x,社团7y= 找颜色(0xfffbf1,"3|0|0x272e4c,7|0|0x9f9d9b,9|0|0xfffbf1", 95, 276, 35, 291, 39)
爷爷的店7x,爷爷的店7y= 找颜色(0xfffbf1,"2|0|0x2b3047,7|0|0x646569,10|1|0xfffbf1", 95, 285, 35, 299, 40)
决斗重置7x,决斗重置7y= 找颜色(0xfffbf1,"4|2|0x9f9ea4,10|3|0x899f78,16|4|0xcdf29e", 95, 542, 419, 595, 445)	
--任务领奖7x,任务领奖7y= 找颜色(0x898ea6,"7|0|0x768079,14|0|0x4f62bb,21|0|0x646760", 95, 523, 54, 558, 68)
任务领奖7x,任务领奖7y= 找颜色(0xb9b1a7,"17|0|0x584c40,21|0|0x273b5b,31|0|0x33578c", 95, 232, 66, 276, 81)
邮件7x,邮件7y= 找颜色(0xddebea,"7|4|0x7b8087,11|6|0x2d3143,18|6|0x101c64", 95, 539, 72, 561, 98)
赛季奖励7x,赛季奖励7y= 找颜色(0xcbd3d5,"5|3|0x7e8688,10|6|0x202430,15|5|0x030f5a", 95, 603, 53, 624, 78)


误点卡信息7x,误点卡信息7y= 找颜色(0xe5e2dc,"2|3|0x07111e,4|5|0xbabab7,5|6|0xfffbf1", 95, 258, 202, 267, 213)--部分
误点卡信息27x,误点卡信息27y= 找颜色(0x787c98,"15|0|0xf1f2f8,1|8|0x6d708b,18|13|0x64677f", 95, 309, 692, 334, 715) 

--激活码7x,激活码7y= 找颜色(0x6c6b7b,"4|8|0xbdbabc,3|32|0xaaa1a2,3|39|0x9c9c9c,8|44|0xffffff", 95, 446, 283, 478, 353) 0x33344d,"5|9|0x5c5c6d,-1|44|0x4b3f42,2|45|0x8c8383", 95, 446, 283, 478, 353
end

function 冒险界面7()
l7x, l7y = 找颜色(0xbff0fb,"8|0|0xbcecfb,3|3|0xd3f5fd,11|4|0xbde9f7", 95, 3, 58, 1329, 745) 
z7x, z7y = 找颜色(0xc8aefa,"9|0|0xa984f3,0|5|0xded0fb,9|6|0xc0a4f3", 95, 3, 58, 1329, 745) 
h7x, h7y = 找颜色(0xfdf1bc,"11|1|0xf7e89c,2|4|0xfdf3d4,10|4|0xf6ecaf", 95, 3, 58, 1329, 745)
赢了7x, 赢了7y = 找颜色(0xc3864f,"38|12|0xffffff,99|18|0x301f10,180|26|0xffffff", 95, 901, 148, 1173, 247)
输了7x, 输了7y = 找颜色(0xffffff,"81|-27|0x131a27,169|-31|0xffffff,214|-5|0x101725", 95, 900, 150, 1178, 243)
挑战7x, 挑战7y = 找颜色(0xb5e070,"4|0|0xb5e070,-5|10|0xfffbf1,8|10|0xfffbf1", 95, 3, 58, 1329, 745)  
end 

function 多用界面7()
if 主界面7x> -1 then   --ok
点击(1010, 370)
elseif 决斗场7x> -1 then   --ok
点击(780, 570)
elseif 手动中7x> -1 then  --ok
点击(40, 180)
elseif 自动中7x> -1 then  --ok
mSleep(1000) --点击(7, 340)
elseif 胜利7x> -1 then    --ok
	if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
elseif 失败7x> -1 then    --ok
	if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
elseif 平局7x> -1 then     -------- 无法测试
	if 调整位置==1 then
		点击(667, 678)
	else
		点击(465, 678)
	end
elseif 零点重置7x> -1 then     --ok 
点击2(660,430)
end
end

function 少用界面7()
if  断线7x> -1 then        --ok
点击2(670, 420)
elseif 升级7x> -1 then     --ok
点击2(665, 530)
elseif 决斗重置7x> -1 then  --ok
点击2(650, 507)	
elseif 任务领奖7x> -1 then  --ok
点击2(1114, 85)
elseif 段位7x> -1 then  --ok
点击2(1000, 135)	
elseif 广告7x> -1 then  --ok
点击2(1110, 80)
elseif 今日任务7x> -1 then   --ok
点击2(665, 190)
elseif 认输7x> -1 then   --------仅决斗场可用
点击2(705, 430)
elseif 签到7x> -1 then    --ok
点击2(1125, 60)
elseif 领奖成功7x> -1 then   --ok
点击2(666, 687)
elseif 误点卡信息7x> -1 then  --------------------------------------------xxxx
点击2(80, 590)
elseif 排行榜7x> -1 then    --ok
点击2(1122, 88)		
elseif 冒险7x> -1 then   --ok
点击2(80, 27)		
elseif 战报7x> -1 then   --ok
点击2(1090, 97)		
elseif 战绩7x> -1 then   --ok
点击2(968, 112)		
elseif 卡组7x> -1 then    -------7ok
点击2(76, 25)	
elseif 误点卡信息27x> -1 then        --------------------------------------------xxxx
点击2(76, 25)	    
elseif 人物7x> -1 then  --ok
点击2(1040, 92)		
elseif 角色7x> -1 then  --ok
点击2(76, 25)
elseif 活动7x> -1 then ----7ok
点击2(76, 25)
elseif 金币7x> -1 then   ----7ok
点击2(960, 150)
elseif 充值7x> -1 then  --ok
点击2(76, 25)
elseif 成就7x> -1 then  --ok
点击2(1111, 70)
elseif 图鉴7x> -1 then  --ok
点击2(1160, 80)
elseif 邮件7x> -1 then       --ok
点击2(1111, 100)
elseif 旅行7x> -1 then    --ok
点击2(76, 25)
elseif 教学7x> -1 then   --ok
点击2(1113, 69)
elseif 魔盒7x> -1 then  --ok
点击2(76, 25)
elseif 商城7x> -1 then  --ok
点击2(76, 25)
elseif 社团7x> -1 then  --ok
点击2(76, 25)
elseif 爷爷的店7x> -1 then  --ok
点击2(76, 25)
elseif 赛季奖励7x> -1 then  --ok
点击2(1114, 76)	
end
点击2(1330, 180) -- 防止卡信息卡死
mSleep(ttt)
点击2(1330, 180) -- 防止卡信息卡死
end

function 可领奖7()
	mSleep(ttt)
	if  可领奖==1 then
		while true do
			常用界面7()
			不常用界面7()
			if 主界面7x> -1  then   
				点击(1010, 370)
			elseif 决斗场7x> -1  then 
				break
			elseif 签到7x> -1  then  
				点击(1125, 60)
			elseif 领奖成功7x> -1  then 
				点击(666, 687)	
			end
		end
		mSleep(ttt)
		点击(480,555)  --进入每日领奖
		mSleep(ttt)
		点击(725,375)   --领取1
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(725,375)   --领取2
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(725,375)   --领取3
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(725,375)   --领取4
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(725,375)   --领取5
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		-- 赛季宝箱
		点击(250,260)  --进入赛季宝箱
		mSleep(ttt)
		点击(735,355)   --领取1
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(735,355)   --领取2
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(735,355)   --领取3
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(735,355)   --领取4
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(735,355)   --领取5
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(735,355)   --领取6
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(1111,80)    --结束每日领奖回到决斗场
		mSleep(ttt)
		点击(90,25)     --返回主界面
		mSleep(2*ttt)
		点击(666,190)   --清除每日任务
		mSleep(ttt)
		点击(945,100)   --点击任务领取
		mSleep(ttt)
		点击(1028,640)   --点击任务领取5
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(850,640)   --点击任务领取4
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(660,640)   --点击任务领取3
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(485,640)   --点击任务领取2
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(300,640)   --点击任务领取1
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(390,155)   --点击宝箱领取1
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(500,155)   --点击宝箱领取2
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(615,155)   --点击宝箱领取3
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(730,155)   --点击宝箱领取4
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(900,155)   --点击宝箱领取5
		mSleep(ttt)
		点击(666,678)   --返回
		-- 中间3个奖励
		mSleep(ttt)
		点击(390,355)   --点击中间宝箱领取1
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(620,355)   --点击中间宝箱领取2
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(900,355)   --点击中间宝箱领取3
		mSleep(ttt)
		点击(666,678)   --返回
		mSleep(ttt)
		点击(1119,70)   --返回主界面

		-- 邮件的奖励
		mSleep(2 * ttt)
		点击(1190,100)   -- 进入邮件
		mSleep(ttt)
		点击(320,350)   -- 点击奖励
		mSleep(ttt)
		点击(1015,228)   --领取奖励
		mSleep(ttt)
		点击(666,660)   --返回

		mSleep(ttt)
		点击(1119,100)   --返回主界面
		mSleep(ttt)
	else
		mSleep(ttt)
		点击(90,25)    --回到主界面
		mSleep(ttt)
	end
end

function 选牌7()

满5=0


function  攻击力1()
mSleep(400)
keepScreen(true);
colorTbl = binarizeImage({
rect = {313,406,398,431},
diff = {"0xfffaf0-0x202020"}
})
for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end
local ocr, msg = createOCR({
type = "tesseract"
})
local code, 攻1 = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})
keepScreen(false);
ocr:release()
攻1s=tonumber(攻1)
mSleep(50)
end

function  攻击力2()
mSleep(400)
keepScreen(true);
colorTbl = binarizeImage({
rect = {495,404,587,435},
diff = {"0xfffaf0-0x202020"}
})
for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end
local ocr, msg = createOCR({
type = "tesseract"
})
local code, 攻2 = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})
keepScreen(false);
ocr:release()
攻2s=tonumber(攻2)
mSleep(50)
end

function  攻击力3()
mSleep(400)
keepScreen(true);
colorTbl = binarizeImage({
rect = {689,406,782,435},
diff = {"0xfffaf0-0x202020"}
})
for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end
local ocr, msg = createOCR({
type = "tesseract"
})
local code, 攻3 = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})
keepScreen(false);
ocr:release()
攻3s=tonumber(攻3)
mSleep(50)
end

function  攻击力4()
mSleep(400)
keepScreen(true);
colorTbl = binarizeImage({
rect = {886,404,979,437},
diff = {"0xfffaf0-0x202020"}
})
for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end
local ocr, msg = createOCR({
type = "tesseract"
})
local code, 攻4 = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})
keepScreen(false);
ocr:release()
攻4s=tonumber(攻4)
mSleep(50)
end

function  攻击力5()
mSleep(400)
keepScreen(true);
colorTbl = binarizeImage({
rect = {1091,406,1186,434},
diff = {"0xfffaf0-0x202020"}
})
for _, row in pairs(colorTbl) do
sysLog(table.concat(row, ','))
end
local ocr, msg = createOCR({
type = "tesseract"
})
local code, 攻5 = ocr:getText({
data = colorTbl,
psm = 7, -- 单个字符模式识别
whitelist = "0123456789"
})
keepScreen(false);
ocr:release()
攻5s=tonumber(攻5)
mSleep(50)
end

while true do 
sysLog('选牌循环')
mSleep(200)
单轮次数=0
号1=0
号2=0
号3=0
号4=0
号5=0

攻击力1()
攻击力2()
攻击力3()
攻击力4()
攻击力5()


竞技有牌7x,竞技有牌7y= 找颜色(0x725a58,"2|1|0x7d7c7f,6|2|0x1d1a1f,10|3|0x0c0d11", 95, 1180, 482, 1203, 496)
决斗都市有牌7x,决斗都市有牌7y= 找颜色(0x725a58,"2|1|0x7d7c7f,6|2|0x1d1a1f,10|3|0x0c0d11", 95, 1180, 482, 1203, 496)
if 竞技有牌7x> -1 then
break
end

while true do 

mSleep(200)

if 攻1s~=nil and 攻1s>1599 and 攻1s<2499 and 号1==0  then
if 攻1s>=2000 and 满5==5 then
mSleep(10)
else
选取(380,400,20,300)
单轮次数=单轮次数+1
号1=1
if 攻1s>=2000 then
满5=满5+1
end
end
if 单轮次数==2 then
break
end
end

if 攻2s~=nil and 攻2s>1599 and 攻2s<2499 and 号2==0 then
if 攻2s>=2000 and 满5==5 then
mSleep(10)
else
选取(580,400,20,300)
单轮次数=单轮次数+1
号2=1
if 攻2s>=2000 then
满5=满5+1
end
end
if 单轮次数==2 then
break
end
end

if 攻3s~=nil and 攻3s>1599 and 攻3s<2499 and 号3==0 then
if 攻3s>=2000 and 满5==5 then
mSleep(10)
else
选取(780,400,20,300)
单轮次数=单轮次数+1
号3=1
if 攻3s>=2000 then
满5=满5+1
end
end
if 单轮次数==2 then
break
end
end

if 攻4s~=nil and 攻4s>1599 and 攻4s<2499 and 号4==0 then
if 攻4s>=2000 and 满5==5 then
mSleep(10)
else
选取(970,400,20,300)
单轮次数=单轮次数+1
号4=1
if 攻4s>=2000 then
满5=满5+1
end
end
if 单轮次数==2 then
break
end
end

if 攻5s~=nil and 攻5s>1599 and 攻5s<2499 and 号5==0 then
if 攻5s>=2000 and 满5==5 then
mSleep(10)
else
选取(1160,400,20,300)
单轮次数=单轮次数+1
号5=1
if 攻5s>=2000 then
满5=满5+1
end
end
if 单轮次数==2 then
break
end
end
----------------------------------------------------------------------------

if 攻5s==nil and 号5==0 then
选取(1160,400,20,300)
单轮次数=单轮次数+1
号5=1
if 单轮次数==2 then
break
end
end

if 攻4s==nil and 号4==0 then
选取(970,400,20,300)
单轮次数=单轮次数+1
号4=1
if 单轮次数==2 then
break
end
end

if 攻3s==nil and 号3==0 then
选取(780,400,20,300)
单轮次数=单轮次数+1
号3=1
if 单轮次数==2 then
break
end
end

if 攻2s==nil  and 号2==0 then
选取(580,400,20,300)
单轮次数=单轮次数+1
号2=1
if 单轮次数==2 then
break
end
end

if 攻1s==nil and 号1==0  then
选取(380,400,20,300)
单轮次数=单轮次数+1
号1=1
if 单轮次数==2 then
break
end
end

----------------------------------------------------------------------------
if 攻1s~=nil and 攻1s>=0  and 号1==0  then
选取(380,400,20,300)
单轮次数=单轮次数+1
号1=1
if 单轮次数==2 then
break
end
end

if 攻2s~=nil and 攻2s>=0  and 号2==0 then
选取(580,400,20,300)
单轮次数=单轮次数+1
号2=1
if 单轮次数==2 then
break
end
end

if 攻3s~=nil and 攻3s>=0  and 号3==0 then
选取(780,400,20,300)
单轮次数=单轮次数+1
号3=1
if 单轮次数==2 then
break
end
end

if 攻4s~=nil and 攻4s>=0  and 号4==0 then
选取(970,400,20,300)
单轮次数=单轮次数+1
号4=1
if 单轮次数==2 then
break
end
end

if 攻5s~=nil and 攻5s>=0  and 号5==0 then
选取(1160,400,20,300)
单轮次数=单轮次数+1
号5=1
if 单轮次数==2 then
break
end
end

----------------------------------------------------------------------------


竞技有牌7x,竞技有牌7y= 找颜色(0x725a58,"2|1|0x7d7c7f,6|2|0x1d1a1f,10|3|0x0c0d11", 95, 1180, 482, 1203, 496)
if 竞技有牌7x> -1 then
break
end

end



end
end

function 防闪退7()
	if 闪退==1 then
		flag = appIsRunning("com.demea.conur"); 
		if flag == 0 then --如果没有运行
			闪退次数=闪退次数+1
			runApp("com.demea.conur") --运行QQ
			login()
			-- mSleep(15000)
			-- 点击(660,530)
			-- mSleep(15000)
			-- 点击(1016,121)
			-- mSleep(10000)
			-- 点击(660,660)
			-- mSleep(1000)
		end
	end
end

function 投降位置7()
	投降位置7x, 投降位置7y = findColor({157, 23, 595, 227}, 
	"0|0|0xe9f6ff,-1|-15|0xfbfbfb,-13|0|0xe6f1fc,-1|13|0xf2f6fb,16|-7|0xfffffd,16|7|0xffffff,-9|40|0xfceaaa,7|11|0x0c2966,4|45|0x020407",
	85, 0, 0, 0)
end

function 黑暗入口位置7()
	黑暗入口位置7x, 黑暗入口位置7y = findColor({1, 40, 235, 748}, "0|0|0x3b2d3a,-66|-74|0x2b2024,72|-67|0x493f39,72|71|0x0b131e,-78|72|0x00283d,-45|-38|0x958aaa,-30|-18|0x2f2446,47|-24|0x65595b,52|-53|0x55494f,26|-3|0x3e826f,-13|-3|0x61f3b6,8|14|0xdacfcc,8|40|0x847081,-36|38|0x3e331d,48|43|0x4a4130,53|-64|0x68473f,3|-57|0x884a39,-55|-56|0x472b2a", 95, 0, 0, 0)
end