local M = {}
local _ENV = M

--游戏相关
LoginGame				= 0x1001 			--登录具体某个游戏请求

LogoutGame				= 0x1002 			--登出具体某个游戏请求

RoomInfo				= 0x1003 			--具体某个游戏的房间列表请求

BroadcastLogout			= 0x1005			--广播玩家登出房间

Kickout					= 0x1006

RoomChat				= 0x1007			--发送聊天和常用语

Bankruptcy				= 0x1008			--破产通知

SendProp				= 0x100A

RoomOnline				= 0x100C

Money					= 0x100D		--金币广播

Diamond					= 0x1016 		--同步玩家钻石

Leave					= 0x1017		--暂离

Offline					= 0x100E		--广播玩家暂离

BuildConfig				= 0x100F

BuildInfo				= 0x1011

Destroy					= 0x1012

Built					= 0x1013

MasterPay				= 0x1014

NonMasterPay			= 0x1015

Poll					= 0x1018

Vote					= 0x1019

VoteEnd					= 0x1020

Preset					= 0x1021

ReBuild					= 0x1028	--续房

return M