
�
room/lgmj2.protolgmj2common.protoroom/room.proto"L
GameInfo
ante (
	buildInfo (2.common.BuildInfo
code (
OpCard

op (
card (

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 (
opcards
 (2
opInfo (2.lgmj2.OperateInfo
points (

lastInCard
huaCards (
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime (
GameLoginRsp
result (2.common.Result!
gameInfo (2.lgmj2.GameInfo"
players (2.lgmj2.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens (
destroyVoteInfo (2.lgmj2.VoteInfo"X
GamePlayerLoginRsp
result (2.common.Result"
players (2.lgmj2.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid (
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId (
DealRsp
result (2.common.Result
cardsNum (
cards (
bankerId (
caiShens (
OperateInfo
uid (

op (
opCard (
anCards (
buCards (
	handCards (
	targetUid (
noGiveUp ("o
BuHua
uid (
opInfo (2.lgmj2.OperateInfo
huaCards (
buCards (

buCardsNum (
BuHuaRsp
result (2.common.Result
buHuas (2.lgmj2.BuHua"�
TurnRsp
result (2.common.Result
uid (
card ("
opInfo (2.lgmj2.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card (
OperationRsp
result (2.common.Result"
opInfo (2.lgmj2.OperateInfo"
myInfo (2.lgmj2.OperateInfo"8
	DetailTai
reason (
tais (
value (
DetailHu
reason (
hus (
value (
LostInfo
uid (
points ("=
WinInfo
points ("
	lostInfos (2.lgmj2.LostInfo"�
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2
huCards ( 
winInfos (2.lgmj2.WinInfo$

detailTais (2.lgmj2.DetailTai"
	detailHus	 (2.lgmj2.DetailHu
tais
 (
hus (
totalHus (
zimo
huaCards (
laZi ("�
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu ("�
EndRsp
result (2.common.Result
	lastRound ( 
endinfos (2.lgmj2.EndInfo$

finalInfos (2.lgmj2.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("Z
	PointsRsp
result (2.common.Result
reason (
points (2