
Ã
room/ruianmj3.protoruianmj3common.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code (""
OpCard

op (
card ("÷

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 (!
opcards
 (2.ruianmj3.OpCard%
opInfo (2.ruianmj3.OperateInfo
points (

lastInCard (
huaCards (
fong (
agree (
	baibanNum ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("¬
GameLoginRsp
result (2.common.Result$
gameInfo (2.ruianmj3.GameInfo%
players (2.ruianmj3.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens (
diHu (+
destroyVoteInfo (2.ruianmj3.VoteInfo"[
GamePlayerLoginRsp
result (2.common.Result%
players (2.ruianmj3.GamePlayer"n
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (
diHu (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("Ñ
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId (
dongerId (
diHu ("n
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
noGiveUp ("r
BuHua
uid (%
opInfo (2.ruianmj3.OperateInfo
huaCards (
buCards (

buCardsNum ("K
BuHuaRsp
result (2.common.Result
buHuas (2.ruianmj3.BuHua"å
TurnRsp
result (2.common.Result
uid (
card (%
opInfo (2.ruianmj3.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("|
OperationRsp
result (2.common.Result%
opInfo (2.ruianmj3.OperateInfo%
myInfo (2.ruianmj3.OperateInfo"8
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
points ("@
WinInfo
points (%
	lostInfos (2.ruianmj3.LostInfo"˘
EndInfo
uid (
	leftCards (
points (
totalPoints (!
opcards (2.ruianmj3.OpCard
huCards (#
winInfos (2.ruianmj3.WinInfo'

detailTais (2.ruianmj3.DetailTai%
	detailHus	 (2.ruianmj3.DetailHu
tais
 (
hus (
totalHus (
zimo (
huaCards (
fengDing (
quanSao (
daPaoFen ("¢
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu (
totalDaPaoFen ("®
EndRsp
result (2.common.Result
	lastRound (#
endinfos (2.ruianmj3.EndInfo'

finalInfos (2.ruianmj3.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("]
	PointsRsp
result (2.common.Result
reason ( 
points (2.ruianmj3.Points