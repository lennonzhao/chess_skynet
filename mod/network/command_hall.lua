local M = {}
local _ENV = M

HALL_ID 			= 	40000 		--游戏大厅服务ID

HeartBeat 		= 0x0 		--心跳包
Login  			= 0x1		--登录大厅
GameInfo 		= 0x3		--获取游戏列表请求
RankInfo 		= 0x4			--获取排行榜列表请求
TaskInfo		= 0x5			--获取任务列表请求
TaskAward		= 0x6 			--获取任务奖励
Push			= 0x7			--推送消息
Market			= 0x8			--商城请求
Order			= 0x9 			--下单请求
Exchange			= 0xA 			--商品兑换
MailDel			= 0xE 			--删除邮件
Mailbox			= 0xF			--获取邮箱信息
MailboxAward		= 0x1D 			--邮件领奖
Like 			= 0x10 			--点赞
Prop				= 0x11 			--道具
Wallet			= 0x12			--重置玩家钱包
NickGender		= 0x13 					--修改昵称性别
SelfInfo			= 0x14 					--获取自身信息
UserInfo			= 0x15 					--获取其他玩家信息
BankruptInfo		= 0x16 					--获取破产补助信息
WorldChat		= 0x17
WorldChatBct		= 0x18 					--世界聊天广播
AwardBox			= 0x19					--获取所有宝箱
AwardBoxOpen		= 0x1A 					--领取宝箱奖励
VipInfo			= 0x1B					--请求vip特权信息
FirstPay			= 0x1C 					--请求首充信息
Friend 			= 0x1E				 	--获取好友列表
FriendOnline		= 0x1F				 	--获取好友在线
AddFriend 		= 0x20 					--添加好友
RemoveFriend		= 0x21 					--删除好友
BlackFriend 		= 0x22 					--加黑名单
WhiteFriend 		= 0x23 					--加白名单
Invite			= 0x24
InviteConfirm	= 0x25
BindProxy		= 0x26 					--绑定代理 0x25
ProxyInfo		= 0x27 					--绑定代理信息 0x26
Follow			= 0x28
PdkLog			= 0x29					--获取跑得快最近十场的信息
PdkDetailLog		= 0x2A					--获取牌局详情
Share			= 0x2C					--分享上报
Official			= 0x2E
BuildConfigs		= 0x31
Points			= 0x32 					--长沙麻将战绩
PointsDetail		= 0x33					--麻将战绩详情
ProxyWechat		= 0x34					--获取代理微信号
-- SignIn			= 0x18					--大转盘登录信息

Build 			= 0x35
Playback 		= 0x36					--请求回放信息
CoinInfo			= 0x43 				-- 金币场列表
StateConfig		= 0x44				-- 状态信息接口
DaySignInfo		= 0x45				-- 签到信息接口
DaySign 			= 0x46				-- 签到接口
-- 邀请玩牌相关
InviteInfo 		= 0x47				-- 邀请信息(人数 奖励相关)
InviteBind 		= 0x48
InviteAward 		= 0x49
PropInfo 		= 0x52
Authenticate		= 0x53 				-- 实名认证
Forward 			= 0x100				-- 透传

Transferred      = 0x2D

return M