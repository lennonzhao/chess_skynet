
Ï
room/aqpf.protoaqpfcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("5
OpCard

op (
card (
	targetUid ("ÿ

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
 (2.aqpf.OpCard!
opInfo (2.aqpf.OperateInfo
points (

lastInCard (
huaCards (
fong (
agree (
	tingCards (
disableOutCards (
enableOutCards ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("Ç
GameLoginRsp
result (2.common.Result 
gameInfo (2.aqpf.GameInfo!
players (2.aqpf.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
leftNum	 (
bankerId
 (
caiShens (
diHu ('
destroyVoteInfo (2.aqpf.VoteInfo
fanPais ("W
GamePlayerLoginRsp
result (2.common.Result!
players (2.aqpf.GamePlayer"n
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
uid ("„
ShakeDiceRsp
result (2.common.Result
numbers1 (
numbers2 (
bankerId (
dongerId (
diHu ("
DealRsp
result (2.common.Result
cardsNum (
cards (
bankerId (
caiShens (
fanPais (" 
OperateInfo
uid (

op (
opCard (
anCards (
buCards (
	handCards (
	targetUid (
noGiveUp (
tianTingCards	 (
	tingCards (
tianTing (!
	tingInfos (2.aqpf.TingInfo
disableOutCards (
enableOutCards ("n
BuHua
uid (!
opInfo (2.aqpf.OperateInfo
huaCards (
buCards (

buCardsNum ("G
BuHuaRsp
result (2.common.Result
buHuas (2.aqpf.BuHua"'
TingCard
card (
count (">
TingInfo
outcard (!
	tingCards (2.aqpf.TingCard"—
TurnRsp
result (2.common.Result
uid (
card (!
opInfo (2.aqpf.OperateInfo
huaCards (
haiDi (
buHua ("J
OperationReq 
request (2.common.Request

op (
card ("t
OperationRsp
result (2.common.Result!
opInfo (2.aqpf.OperateInfo!
myInfo (2.aqpf.OperateInfo"8
	DetailTai
reason (
tais (
value ("6
DetailHu
reason (
hus (
value ("G

DetailGang
reason (
gangs (
value (
uid ("0
ZhaMa
uid (

ma (
effect ("G
ZhaMaRsp
result (2.common.Result
zhaMas (2.aqpf.ZhaMa"'
LostInfo
uid (
points ("L
WinInfo
points (!
	lostInfos (2.aqpf.LostInfo
reason ("§
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2.aqpf.OpCard
huCards (
winInfos (2.aqpf.WinInfo!
	detailHus	 (2.aqpf.DetailHu%
detailGangs
 (2.aqpf.DetailGang
hus (
totalHus (
zimo (
outHuas ("*
	RoundInfo
points (
infos (	"°
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu (#

roundInfos (2.aqpf.RoundInfo"½
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.aqpf.EndInfo#

finalInfos (2.aqpf.FinalInfo
draw (
destroy (
zhaMas	 (2.aqpf.ZhaMa":
Points
uid (
points (
totalPoints ("Y
	PointsRsp
result (2.common.Result
reason (
points (2.aqpf.Points