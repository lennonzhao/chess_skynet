
¨
room/leqingmj.protoleqingmjcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("5
OpCard

op (
card (
	targetUid ("√

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
 (2.leqingmj.OpCard%
opInfo (2.leqingmj.OperateInfo
points (

lastInCard (
huaCards (
fong (
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("÷
GameLoginRsp
result (2.common.Result$
gameInfo (2.leqingmj.GameInfo%
players (2.leqingmj.GamePlayer
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
destroyVoteInfo (2.leqingmj.VoteInfo

lianZhuang ("[
GamePlayerLoginRsp
result (2.common.Result%
players (2.leqingmj.GamePlayer"Ç
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (
diHu (

lianZhuang (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("Ü
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId (
diHu (

lianZhuang ("n
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
opInfo (2.leqingmj.OperateInfo
huaCards (
buCards (

buCardsNum ("K
BuHuaRsp
result (2.common.Result
buHuas (2.leqingmj.BuHua"a
	KaiJinRsp
result (2.common.Result
bankerId (
huaCards (
caiShens ("å
TurnRsp
result (2.common.Result
uid (
card (%
opInfo (2.leqingmj.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("|
OperationRsp
result (2.common.Result%
opInfo (2.leqingmj.OperateInfo%
myInfo (2.leqingmj.OperateInfo"8
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
points ("P
WinInfo
points (%
	lostInfos (2.leqingmj.LostInfo
reason ("“
EndInfo
uid (
	leftCards (
points (
totalPoints (!
opcards (2.leqingmj.OpCard
huCards (#
winInfos (2.leqingmj.WinInfo'

detailTais (2.leqingmj.DetailTai%
	detailHus	 (2.leqingmj.DetailHu
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
	totalBeHu ("®
EndRsp
result (2.common.Result
	lastRound (#
endinfos (2.leqingmj.EndInfo'

finalInfos (2.leqingmj.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("]
	PointsRsp
result (2.common.Result
reason ( 
points (2.leqingmj.Points