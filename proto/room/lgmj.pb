
‹
room/lgmj.protolgmjcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code (""
OpCard

op (
card ("≠

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
 (2.lgmj.OpCard!
opInfo (2.lgmj.OperateInfo
points (

lastInCard (
huaCards (
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("®
GameLoginRsp
result (2.common.Result 
gameInfo (2.lgmj.GameInfo!
players (2.lgmj.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens ('
destroyVoteInfo (2.lgmj.VoteInfo"W
GamePlayerLoginRsp
result (2.common.Result!
players (2.lgmj.GamePlayer"`
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
noGiveUp ("n
BuHua
uid (!
opInfo (2.lgmj.OperateInfo
huaCards (
buCards (

buCardsNum ("G
BuHuaRsp
result (2.common.Result
buHuas (2.lgmj.BuHua"à
TurnRsp
result (2.common.Result
uid (
card (!
opInfo (2.lgmj.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("t
OperationRsp
result (2.common.Result!
opInfo (2.lgmj.OperateInfo!
myInfo (2.lgmj.OperateInfo"8
	DetailTai
reason (
tais (
value ("6
DetailHu
reason (
hus (
value ("'
LostInfo
uid (
points ("<
WinInfo
points (!
	lostInfos (2.lgmj.LostInfo"¬
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2.lgmj.OpCard
huCards (
winInfos (2.lgmj.WinInfo#

detailTais (2.lgmj.DetailTai!
	detailHus	 (2.lgmj.DetailHu
tais
 (
hus (
totalHus (
zimo (
huaCards (
laZi ("ã
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu ("†
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.lgmj.EndInfo#

finalInfos (2.lgmj.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("Y
	PointsRsp
result (2.common.Result
reason (
points (2.lgmj.Points