
ª
room/pymj_coin.proto	pymj_coincommon.protoroom/room.proto"Y
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code (
tip (""
OpCard

op (
card ("√

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 ("
opcards
 (2.pymj_coin.OpCard&
opInfo (2.pymj_coin.OperateInfo
points (

lastInCard (
huaCards (
agree (

ai ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("∑
GameLoginRsp
result (2.common.Result%
gameInfo (2.pymj_coin.GameInfo&
players (2.pymj_coin.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens (,
destroyVoteInfo (2.pymj_coin.VoteInfo"\
GamePlayerLoginRsp
result (2.common.Result&
players (2.pymj_coin.GamePlayer"`
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
noGiveUp ("s
BuHua
uid (&
opInfo (2.pymj_coin.OperateInfo
huaCards (
buCards (

buCardsNum ("L
BuHuaRsp
result (2.common.Result 
buHuas (2.pymj_coin.BuHua"ç
TurnRsp
result (2.common.Result
uid (
card (&
opInfo (2.pymj_coin.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("~
OperationRsp
result (2.common.Result&
opInfo (2.pymj_coin.OperateInfo&
myInfo (2.pymj_coin.OperateInfo")
	DetailTai
reason (
tais ("'
LostInfo
uid (
points ("A
WinInfo
points (&
	lostInfos (2.pymj_coin.LostInfo"Å
EndInfo
uid (
	leftCards (
points (
totalPoints ("
opcards (2.pymj_coin.OpCard
huCards ($
winInfos (2.pymj_coin.WinInfo(

detailTais (2.pymj_coin.DetailTai
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
	totalBeHu ("™
EndRsp
result (2.common.Result
	lastRound ($
endinfos (2.pymj_coin.EndInfo(

finalInfos (2.pymj_coin.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("^
	PointsRsp
result (2.common.Result
reason (!
points (2.pymj_coin.Points"5
AiReq 
request (2.common.Request

ai ("@
AiRsp
result (2.common.Result
uid (

ai (