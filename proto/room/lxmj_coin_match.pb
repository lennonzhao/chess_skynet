
¥
room/lxmj_coin_match.protolxmj_coin_matchcommon.protoroom/room.proto"Y
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code (
tip (""
OpCard

op (
card ("œ

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 ((
opcards
 (2.lxmj_coin_match.OpCard,
opInfo (2.lxmj_coin_match.OperateInfo
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
leftTime ("…
GameLoginRsp
result (2.common.Result+
gameInfo (2.lxmj_coin_match.GameInfo,
players (2.lxmj_coin_match.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens (2
destroyVoteInfo (2.lxmj_coin_match.VoteInfo"b
GamePlayerLoginRsp
result (2.common.Result,
players (2.lxmj_coin_match.GamePlayer"`
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
noGiveUp ("y
BuHua
uid (,
opInfo (2.lxmj_coin_match.OperateInfo
huaCards (
buCards (

buCardsNum ("R
BuHuaRsp
result (2.common.Result&
buHuas (2.lxmj_coin_match.BuHua"ì
TurnRsp
result (2.common.Result
uid (
card (,
opInfo (2.lxmj_coin_match.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("ä
OperationRsp
result (2.common.Result,
opInfo (2.lxmj_coin_match.OperateInfo,
myInfo (2.lxmj_coin_match.OperateInfo")
	DetailTai
reason (
tais ("'
LostInfo
uid (
points ("G
WinInfo
points (,
	lostInfos (2.lxmj_coin_match.LostInfo"ì
EndInfo
uid (
	leftCards (
points (
totalPoints ((
opcards (2.lxmj_coin_match.OpCard
huCards (*
winInfos (2.lxmj_coin_match.WinInfo.

detailTais (2.lxmj_coin_match.DetailTai
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
	totalBeHu ("∂
EndRsp
result (2.common.Result
	lastRound (*
endinfos (2.lxmj_coin_match.EndInfo.

finalInfos (2.lxmj_coin_match.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("d
	PointsRsp
result (2.common.Result
reason ('
points (2.lxmj_coin_match.Points"5
AiReq 
request (2.common.Request

ai ("@
AiRsp
result (2.common.Result
uid (

ai (