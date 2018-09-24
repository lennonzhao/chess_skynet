
�=
room/room.protoroomcommon.proto"@
Player&

playerInfo (2.common.PlayerInfo
seatId (
LoginReq 
request (2.common.Request
gameId (
roomId (
tableId (
code (
jsonStr (	
gameType (
	roomLevel (
uid	 (
lastTableId
 (
LoginRsp
result (2.common.Result
gameId (
roomId (
tableId (
gameType (
	roomLevel (
BroadcastLoginRsp
result (2.common.Result
players (2.room.Player"-
	LogoutReq 
request (2.common.Request"+
	LogoutRsp
result (2.common.Result"B
BroadcastLogoutRsp
result (2.common.Result
uids (

KickoutReq 
request (2.common.Request
uid (

KickoutRsp
result (2.common.Result"/
RoomInfoReq 
request (2.common.Request"C
RoomInfo

id (
limit (
ante (
online (
RoomInfoRsp
result (2.common.Result
gameId (
info (2.room.RoomInfo"A

request (2.common.Request
gameId (

RoomOnline

id (
online (

result (2.common.Result
gameId (
onlines (2.room.RoomOnline"N
RoomChatReq 
request (2.common.Request
type (
message (	"Y
RoomChatRsp
result (2.common.Result
uid (
type (
message (	"M

result (2.common.Result
uid (
message (	">
TimeAwardReq 
request (2.common.Request
time (
TimeAwardRsp
result (2.common.Result
money (
nextTime (
SendPropReq 
request (2.common.Request
recvId (
pid (
SendPropRsp
result (2.common.Result
sendId (
recvIds (
pid (
costType (
	costValue (

totalValue ("&
	MoneyInfo
uid (
coin ("O
MoneyRsp
result (2.common.Result#

moneyInfos (2.room.MoneyInfo"9

OfflineRsp
result (2.common.Result
uid (
LeaveReq 
request (2.common.Request
leave ("F
LeaveRsp
result (2.common.Result
uid (
leave ("2
BuildConfigReq 
request (2.common.Request"v
BuildConfigRsp
result (2.common.Result%

buildInfos (2.common.BuildInfo

AA (
	buildJson (	"^
BuildReq 
request (2.common.Request$
	buildInfo (2.common.BuildInfo

AA ("I
BuildRsp
result (2.common.Result
code (
diamond (">
BuildInfoReq 
request (2.common.Request
code (
BuildInfoRsp
result (2.common.Result
code (
	buildInfo (2.common.BuildInfo".

DestroyReq 
request (2.common.Request",

DestroyRsp
result (2.common.Result",
BuiltReq 
request (2.common.Request"j
BuiltRsp
result (2.common.Result
codes (
gameId (
roomId (
tableId (
MasterPayReq 
request (2.common.Request"�
MasterPayRsp
result (2.common.Result
masterId (
diamond ($
	buildInfo (2.common.BuildInfo
code (
NonMasterPayReq 
request (2.common.Request"O
NonMasterPayRsp
result (2.common.Result
uid (
diamond ("l
DiamondInfo 
request (2.common.Request
uid (
diamond (
delta (
reason (".

DiamondReq 
request (2.common.Request"U

DiamondRsp
result (2.common.Result'
diamondInfos (2.room.DiamondInfo"+
PollReq 
request (2.common.Request"Q
PollRsp
result (2.common.Result

promoterId (

expiryTime (
VoteReq 
request (2.common.Request
agree ("H
VoteRsp
result (2.common.Result
voteId (
agree (":

VoteEndRsp
result (2.common.Result
pass ("<
	PresetReq 
request (2.common.Request
cards (
	PresetRsp
result (2.common.Result"N
AgentKickoutReq 
request (2.common.Request
code (
uid (
AgentKickoutRsp
result (2.common.Result
code (
uid (
AgentDestroyReq 
request (2.common.Request
code (
AgentDestroyRsp
result (2.common.Result"7
TipsRsp
result (2.common.Result
tips (	"4
PollStartGameReq 
request (2.common.Request"Z
PollStartGameRsp
result (2.common.Result

promoterId (

expiryTime (
VoteStartGameReq 
request (2.common.Request
agree ("Q
VoteStartGameRsp
result (2.common.Result
voteId (
agree ("C
VoteStartGameEndRsp
result (2.common.Result
pass (".

ReBuildReq 
request (2.common.Request",

ReBuildRsp
result (2.common.Result"R
MatchSignReq 
request (2.common.Request
gameType (
cancel (
MatchSignRsp
result (2.common.Result
gameType (
playCode (
MatchCfgReq 
request (2.common.Request
gameType (
transmitType (
MatchRewardInfo
rank (

rewardType (
	rewardNum (

rewardDesc (	"�
	MatchInfo
gameType (
name (	
round (
capacity (
	startTime (
endTime (
diamond (
startNum (
desc	 (	
	matchType
 (

rewardInfo (2.room.MatchRewardInfo"L
MatchCfgRsp
result (2.common.Result
info (2.room.MatchInfo"N

result (2.common.Result
code (
diamond ("�

result (2.common.Result
rank (
point (

rewardType (
	rewardNum (
inRoom (

rewardTime (
	matchName (	"7
PushRsp
result (2.common.Result
json (	"�
MatchRecord
gameType (
rank (

rewardType (
	rewardNum (
time (
point (
name (	
title (	
	matchType	 (
MatchRecordReq 
request (2.common.Request"S
MatchRecordRsp
result (2.common.Result!
record (2.room.MatchRecord">

request (2.common.Request
uid (

result (2.common.Result
gameType (
point (
rank (
totalNum (
maxPoint (
minPoint (
curRound (
	leftTable	 ("C

request (2.common.Request
gameType (

result (2.common.Result
gameType (
count (
MatchStatusRsp
result (2.common.Result
gameType (
hasSign (
hasStart (
MatchRoomRsp
result (2.common.Result
gameType (
	roomLevel (
MatchProgressReq 
request (2.common.Request"Y
MatchProgressRsp
result (2.common.Result
playerCount (
curRound (
ThroughMatchAwardReq 
request (2.common.Request"m
ThroughMatchAwardRsp
result (2.common.Result
gameType (
	awardType (
awardNum (
ThroughMatchRoomRsp
result (2.common.Result
gameType (
gameId (
tableId (
ThroughMatchRebirthReq 
request (2.common.Request
share (
ThroughMatchRebirthRsp
result (2.common.Result
gameType (
share (
diamond (
rebirthCard (
ThroughMatchProgressReq 
request (2.common.Request"�
ThroughMatchProgressRsp
result (2.common.Result
gameType (
progress (
progressStatus (
rebirthDiamond (
rebirthShare (
maxProgress (
rebirthCard (
needRebirthCard	 (
ThroughSettleProgressRsp
result (2.common.Result
gameType (
progress (
progressStatus (
rebirthDiamond (
rebirthShare (
maxProgress (
rebirthCard (
needRebirthCard	 (
ThroughMatchSignReq 
request (2.common.Request
gameType (
cancel (
ThroughMatchSignRsp
result (2.common.Result
gameType (