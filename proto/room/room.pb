
®=
room/room.protoroomcommon.proto"@
Player&

playerInfo (2.common.PlayerInfo
seatId ("Ã
LoginReq 
request (2.common.Request
gameId (
roomId (
tableId (
code (
jsonStr (	
gameType (
	roomLevel (
uid	 (
lastTableId
 ("€
LoginRsp
result (2.common.Result
gameId (
roomId (
tableId (
gameType (
	roomLevel ("R
BroadcastLoginRsp
result (2.common.Result
players (2.room.Player"-
	LogoutReq 
request (2.common.Request"+
	LogoutRsp
result (2.common.Result"B
BroadcastLogoutRsp
result (2.common.Result
uids (";

KickoutReq 
request (2.common.Request
uid (",

KickoutRsp
result (2.common.Result"/
RoomInfoReq 
request (2.common.Request"C
RoomInfo

id (
limit (
ante (
online ("[
RoomInfoRsp
result (2.common.Result
gameId (
info (2.room.RoomInfo"A
RoomOnlineReq 
request (2.common.Request
gameId ("(

RoomOnline

id (
online ("b
RoomOnlineRsp
result (2.common.Result
gameId (!
onlines (2.room.RoomOnline"N
RoomChatReq 
request (2.common.Request
type (
message (	"Y
RoomChatRsp
result (2.common.Result
uid (
type (
message (	"M
BankruptcyRsp
result (2.common.Result
uid (
message (	">
TimeAwardReq 
request (2.common.Request
time ("O
TimeAwardRsp
result (2.common.Result
money (
nextTime ("L
SendPropReq 
request (2.common.Request
recvId (
pid ("”
SendPropRsp
result (2.common.Result
sendId (
recvIds (
pid (
costType (
	costValue (

totalValue ("&
	MoneyInfo
uid (
coin ("O
MoneyRsp
result (2.common.Result#

moneyInfos (2.room.MoneyInfo"9

OfflineRsp
result (2.common.Result
uid (";
LeaveReq 
request (2.common.Request
leave ("F
LeaveRsp
result (2.common.Result
uid (
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
code (
diamond (">
BuildInfoReq 
request (2.common.Request
code ("b
BuildInfoRsp
result (2.common.Result
code ($
	buildInfo (2.common.BuildInfo".

DestroyReq 
request (2.common.Request",

DestroyRsp
result (2.common.Result",
BuiltReq 
request (2.common.Request"j
BuiltRsp
result (2.common.Result
codes (
gameId (
roomId (
tableId ("0
MasterPayReq 
request (2.common.Request"…
MasterPayRsp
result (2.common.Result
masterId (
diamond ($
	buildInfo (2.common.BuildInfo
code ("3
NonMasterPayReq 
request (2.common.Request"O
NonMasterPayRsp
result (2.common.Result
uid (
diamond ("l
DiamondInfo 
request (2.common.Request
uid (
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

promoterId (

expiryTime (":
VoteReq 
request (2.common.Request
agree ("H
VoteRsp
result (2.common.Result
voteId (
agree (":

VoteEndRsp
result (2.common.Result
pass ("<
	PresetReq 
request (2.common.Request
cards ("+
	PresetRsp
result (2.common.Result"N
AgentKickoutReq 
request (2.common.Request
code (
uid ("L
AgentKickoutRsp
result (2.common.Result
code (
uid ("A
AgentDestroyReq 
request (2.common.Request
code ("1
AgentDestroyRsp
result (2.common.Result"7
TipsRsp
result (2.common.Result
tips (	"4
PollStartGameReq 
request (2.common.Request"Z
PollStartGameRsp
result (2.common.Result

promoterId (

expiryTime ("C
VoteStartGameReq 
request (2.common.Request
agree ("Q
VoteStartGameRsp
result (2.common.Result
voteId (
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
gameType (
cancel ("R
MatchSignRsp
result (2.common.Result
gameType (
playCode ("W
MatchCfgReq 
request (2.common.Request
gameType (
transmitType ("Z
MatchRewardInfo
rank (

rewardType (
	rewardNum (

rewardDesc (	"ß
	MatchInfo
gameType (
name (	
round (
capacity (
	startTime (
endTime (
diamond (
startNum (
desc	 (	
	matchType
 ()

rewardInfo (2.room.MatchRewardInfo"L
MatchCfgRsp
result (2.common.Result
info (2.room.MatchInfo"N
MatchBuildRsp
result (2.common.Result
code (
diamond ("ª
MatchAwardRsp
result (2.common.Result
rank (
point (

rewardType (
	rewardNum (
inRoom (

rewardTime (
	matchName (	"7
PushRsp
result (2.common.Result
json (	"¡
MatchRecord
gameType (
rank (

rewardType (
	rewardNum (
time (
point (
name (	
title (	
	matchType	 ("2
MatchRecordReq 
request (2.common.Request"S
MatchRecordRsp
result (2.common.Result!
record (2.room.MatchRecord">
MatchPointReq 
request (2.common.Request
uid ("¹
MatchPointRsp
result (2.common.Result
gameType (
point (
rank (
totalNum (
maxPoint (
minPoint (
curRound (
	leftTable	 ("C
MatchCountReq 
request (2.common.Request
gameType ("P
MatchCountRsp
result (2.common.Result
gameType (
count ("e
MatchStatusRsp
result (2.common.Result
gameType (
hasSign (
hasStart ("S
MatchRoomRsp
result (2.common.Result
gameType (
	roomLevel ("4
MatchProgressReq 
request (2.common.Request"Y
MatchProgressRsp
result (2.common.Result
playerCount (
curRound ("8
ThroughMatchAwardReq 
request (2.common.Request"m
ThroughMatchAwardRsp
result (2.common.Result
gameType (
	awardType (
awardNum ("h
ThroughMatchRoomRsp
result (2.common.Result
gameType (
gameId (
tableId ("I
ThroughMatchRebirthReq 
request (2.common.Request
share ("
ThroughMatchRebirthRsp
result (2.common.Result
gameType (
share (
diamond (
rebirthCard (";
ThroughMatchProgressReq 
request (2.common.Request"æ
ThroughMatchProgressRsp
result (2.common.Result
gameType (
progress (
progressStatus (
rebirthDiamond (
rebirthShare (
maxProgress (
rebirthCard (
needRebirthCard	 ("ç
ThroughSettleProgressRsp
result (2.common.Result
gameType (
progress (
progressStatus (
rebirthDiamond (
rebirthShare (
maxProgress (
rebirthCard (
needRebirthCard	 ("Y
ThroughMatchSignReq 
request (2.common.Request
gameType (
cancel ("G
ThroughMatchSignRsp
result (2.common.Result
gameType (