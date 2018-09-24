
Ÿ
room/pymj3.protopymj3common.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code (""
OpCard

op (
card ("Ø

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 (
opcards
 (2.pymj3.OpCard"
opInfo (2.pymj3.OperateInfo
points (

lastInCard (
huaCards (
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("´
GameLoginRsp
result (2.common.Result!
gameInfo (2.pymj3.GameInfo"
players (2.pymj3.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens ((
destroyVoteInfo (2.pymj3.VoteInfo"X
GamePlayerLoginRsp
result (2.common.Result"
players (2.pymj3.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("d
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId ("n
DealRsp
result (2.common.Result
cardsNum (
cards (
bankerId (
caiShens ("ê
OperateInfo
uid (

op (
opCard (
anCards (
buCards (
	handCards (
	targetUid (
noGiveUp ("o
BuHua
uid ("
opInfo (2.pymj3.OperateInfo
huaCards (
buCards (

buCardsNum ("H
BuHuaRsp
result (2.common.Result
buHuas (2.pymj3.BuHua"â
TurnRsp
result (2.common.Result
uid (
card ("
opInfo (2.pymj3.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("v
OperationRsp
result (2.common.Result"
opInfo (2.pymj3.OperateInfo"
myInfo (2.pymj3.OperateInfo")
	DetailTai
reason (
tais ("'
LostInfo
uid (
points ("=
WinInfo
points ("
	lostInfos (2.pymj3.LostInfo"ı
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2.pymj3.OpCard
huCards ( 
winInfos (2.pymj3.WinInfo$

detailTais (2.pymj3.DetailTai
tais	 (
zimo
 (
huaCards ("ã
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu ("¢
EndRsp
result (2.common.Result
	lastRound ( 
endinfos (2.pymj3.EndInfo$

finalInfos (2.pymj3.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("Z
	PointsRsp
result (2.common.Result
reason (
points (2.pymj3.Points