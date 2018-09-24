
Ì
room/pymj.protopymjcommon.protoroom/room.proto"L
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
 (2.pymj.OpCard!
opInfo (2.pymj.OperateInfo
points (

lastInCard (
huaCards (
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("º
GameLoginRsp
result (2.common.Result 
gameInfo (2.pymj.GameInfo!
players (2.pymj.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens ('
destroyVoteInfo (2.pymj.VoteInfo

curQuanShu ("W
GamePlayerLoginRsp
result (2.common.Result!
players (2.pymj.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("x
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId (

curQuanShu ("n
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
opInfo (2.pymj.OperateInfo
huaCards (
buCards (

buCardsNum ("G
BuHuaRsp
result (2.common.Result
buHuas (2.pymj.BuHua"à
TurnRsp
result (2.common.Result
uid (
card (!
opInfo (2.pymj.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("t
OperationRsp
result (2.common.Result!
opInfo (2.pymj.OperateInfo!
myInfo (2.pymj.OperateInfo")
	DetailTai
reason (
tais ("'
LostInfo
uid (
points ("<
WinInfo
points (!
	lostInfos (2.pymj.LostInfo"Ú
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2.pymj.OpCard
huCards (
winInfos (2.pymj.WinInfo#

detailTais (2.pymj.DetailTai
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
	totalBeHu ("†
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.pymj.EndInfo#

finalInfos (2.pymj.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("Y
	PointsRsp
result (2.common.Result
reason (
points (2.pymj.Points