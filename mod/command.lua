if Command then return end
module("Command")

HeartBeatReq 		=	0 		--心跳包
HeartBeatRsp		=   HeartBeatReq

HALL_ID 			= 	40000 		--游戏大厅服务ID

--大厅相关
LoginReq  			= 0x1		--登录大厅
LoginRsp			= LoginReq  --登录大厅返回

GameInfoReq 		= 0x3			--获取游戏列表请求
GameInfoRsp 		= GameInfoReq	--获取游戏列表返回

RankInfoReq 		= 0x4			--获取排行榜列表请求
RankInfoRsp 		= RankInfoReq	--获取排行榜列表返回

TaskInfoReq			= 0x5			--获取任务列表请求
TaskInfoRsp			= TaskInfoReq	--获取任务列表返回

TaskAwardReq		= 0x6 			--获取任务奖励
TaskAwardRsp		= TaskAwardReq 	--获取任务奖励返回

PushRsp				= 0x7			--推送消息

MarketReq			= 0x8			--商城请求
MarketRsp			= MarketReq		--商城请求

OrderReq			= 0x9 			--下单请求
OrderRsp			= OrderReq		--下单请求

ExchangeReq			= 0xA 			--商品兑换
ExchangeRsp			= ExchangeReq 	--商品兑换

MailDelReq			= 0xE 			--删除邮件
MailDelRsp			= MailDelReq	--删除邮件

MailboxReq			= 0xF			--获取邮箱信息
MailboxRsp			= MailboxReq	--获取邮箱

MailboxAwardReq		= 0x1D 			--邮件领奖
MailboxAwardRsp 	= MailboxAwardReq

LikeReq 			= 0x10 			--点赞
LikeRsp 			= LikeReq 		--点赞

PropReq				= 0x11 			--道具
PropRsp				= PropReq		--道具返回

WalletReq			= 0x12			--重置玩家钱包
WalletRsp			= WalletReq		--重置玩家钱包

NickGenderReq		= 0x13 					--修改昵称性别
NickGenderRsp		= NickGenderReq 		--修改昵称性别

SelfInfoReq			= 0x14 					--获取自身信息
SelfInfoRsp			= SelfInfoReq 			--获取自身信息

UserInfoReq			= 0x15 					--获取其他玩家信息
UserInfoRsp			= UserInfoReq 			--获取其他玩家信息

BankruptInfoReq		= 0x16 					--获取破产补助信息
BankruptInfoRsp		= BankruptInfoReq		--获取破产补助信息

WorldChatReq		= 0x17
WorldChatRsp		= WorldChatReq

WorldChatBct		= 0x18 					--世界聊天广播

AwardBoxReq			= 0x19					--获取所有宝箱
AwardBoxRsp			= AwardBoxReq

AwardBoxOpenReq		= 0x1A 					--领取宝箱奖励
AwardBoxOpenRsp		= AwardBoxOpenReq		

VipInfoReq			= 0x1B					--请求vip特权信息
VipInfoRsp			= VipInfoReq

FirstPayReq			= 0x1C 					--请求首充信息
FirstPayRsp			= FirstPayReq

FriendReq 			= 0x1E				 	--获取好友列表
FriendRsp			= FriendReq

FriendOnlineReq		= 0x1F				 	--获取好友在线
FriendOnlineRsp		= FriendOnlineReq

AddFriendReq 		= 0x20 					--添加好友
AddFriendRsp		= AddFriendReq

RemoveFriendReq		= 0x21 					--删除好友
RemoveFriendRsp		= RemoveFriendReq

BlackFriendReq 		= 0x22 					--加黑名单
BlackFriendRsp		= BlackFriendReq

WhiteFriendReq 		= 0x23 					--加白名单
WhiteFriendRsp		= WhiteFriendReq

InviteReq			= 0x24
InviteRsp			= InviteReq

InviteConfirmReq	= 0x25
InviteConfirmRsp	= InviteConfirmReq

BindProxyReq		= 0x26 					--绑定代理 0x25
BindProxyRsp		= BindProxyReq

ProxyInfoReq		= 0x27 					--绑定代理信息 0x26
ProxyInfoRsp		= ProxyInfoReq

FollowReq			= 0x28
FollowRsp			= FollowReq

PdkLogReq			= 0x29					--获取跑得快最近十场的信息
PdkLogRsp			= PdkLogReq

PdkDetailLogReq		= 0x2A					--获取牌局详情
PdkDetailLogRsp		= PdkDetailLogReq

ShareReq			= 0x2C					--分享上报
ShareRsp 			= ShareReq

OfficialReq			= 0x2E
OfficialRsp			= OfficialReq			--官方新闻
	
BuildConfigsReq		= 0x31
BuildConfigsRsp		= BuildConfigsReq

PointsReq			= 0x32 					--长沙麻将战绩
PointsRsp			= PointsReq

PointsDetailReq		= 0x33					--麻将战绩详情
PointsDetailRsp		= PointsDetailReq

ProxyWechatReq		= 0x34					--获取代理微信号
ProxyWechatRsp		= ProxyWechatReq
-- SignInReq			= 0x18					--大转盘登录信息
-- SignInRsp			= SignInReq				--大转盘登录信息

BuildReq 			= 0x35
BuildRsp 			= BuildReq 				--创建房间

PlaybackReq 		= 0x36					--请求回放信息
PlaybackRsp 		= PlaybackReq

CoinInfoReq			= 0x43 				-- 金币场列表
CoinInfoRsp 		= CoinInfoReq

StateConfigReq		= 0x44				-- 状态信息接口
StateConfigRsp 		= StateConfigReq

DaySignInfoReq		= 0x45				-- 签到信息接口
DaySignInfoRsp		= DaySignInfoReq

DaySignReq 			= 0x46				-- 签到接口
DaySignRsp 			= DaySignReq

-- 邀请玩牌相关
InviteInfoReq 		= 0x47				-- 邀请信息(人数 奖励相关)
InviteInfoRsp       = InviteInfoReq 	

InviteBindReq 		= 0x48
InviteBindRsp		= InviteBindReq		-- 邀请绑定

InviteAwardReq 		= 0x49
InviteAwardRsp  	= InviteAwardReq	-- 领取邀请奖励

PropInfoReq 		= 0x52
PropInfoRsp 		= PropInfoReq 		-- 道具信息

AuthenticateReq		= 0x53 				-- 实名认证
AuthenticateRsp 	= AuthenticateReq	-- 实名认证


ForwardRsp 			= 0x100				-- 透传

--游戏相关
LoginGameReq 		= 0x1001 			--登录具体某个游戏请求
LoginGameRsp 		= LoginGameReq 		--登录具体某个游戏返回

LogoutGameReq 		= 0x1002 			--登出具体某个游戏请求
LogoutGameRsp 		= LogoutGameReq 	--登出具体某个游戏返回

RoomInfoReq 		= 0x1003 			--具体某个游戏的房间列表请求
RoomInfoRsp 		= RoomInfoReq 		--具体某个游戏的房间列表返回

BroadcastLogoutRsp	= 0x1005			--广播玩家登出房间

KickoutReq 			= 0x1006
KickoutRsp 			= KickoutReq		--房间T出房间

RoomChatReq			= 0x1007			--发送聊天和常用语
RoomChatRsp			= RoomChatReq

BankruptcyRsp 		= 0x1008			--破产通知

SendPropReq 		= 0x100A
SendPropRsp			= SendPropReq

RoomOnlineReq		= 0x100C
RoomOnlineRsp		= RoomOnlineReq

MoneyRsp 			= 0x100D		--金币广播

DiamondRsp 			= 0x1016 		--同步玩家钻石

LeaveReq			= 0x1017		--暂离
LeaveRsp			= LeaveReq

OfflineRsp			= 0x100E	--广播玩家暂离

BuildConfigReq		= 0x100F
BuildConfigRsp 		= BuildConfigReq

BuildInfoReq		= 0x1011
BuildInfoRsp		= BuildInfoReq

DestroyReq			= 0x1012
DestroyRsp			= DestroyReq

BuiltReq			= 0x1013
BuiltRsp			= BuiltReq

MasterPayReq 		= 0x1014
MasterPayRsp 		= MasterPayReq

NonMasterPayReq		= 0x1015
NonMasterPayRsp		= NonMasterPayReq

PollReq				= 0x1018
PollRsp				= PollReq

VoteReq				= 0x1019
VoteRsp				= VoteReq
VoteEndRsp			= 0x1020

PresetReq			= 0x1021
PresetRsp			= PresetReq

ReBuildReq 			= 0x1028	--续房
ReBuildRsp 			= ReBuildReq	--续房

--[[
*************************************
	亲友圈相关  开始
**************************************
]]
CreateClubReq       = 0x1111
CreateClubRsp		= CreateClubRsp

DestroyClubReq		= 0x1112
DestroyClubRsp		= DestroyClubReq

GetClubListReq		= 0x1112
GetClubListRsp		= GetClubListReq

CreateBoxReq		= 0x1112
CreateBoxRsp		= CreateBoxReq

DestroyBoxReq		= 0x1112
DestroyBoxRsp		= DestroyBoxReq

GetBoxListReq		= 0x1112
GetBoxListRsp		= GetBoxListReq

JoinClubReq			= 0x1112
JoinClubRsp			= JoinClubReq

LeftClubReq			= 0x1112
LeftClubRsp			= LeftClubReq

GetMemberListReq	= 0x1112
GetMemberListRsp	= GetMemberListReq
--[[
**********************
	亲友圈相关  结束
************************
]]

TransferredReq      = 0x2D
TransferredRsp  	= TransferredReq