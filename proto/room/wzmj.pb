
¸
room/wzmj.protowzmjcommon.protoroom/room.proto"f
GameInfo
ante (
bomb ($
	buildInfo (2.common.BuildInfo

AA (
code (""
OpCard

op (
card ("á

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
 (2.wzmj.OpCard!
opInfo (2.wzmj.OperateInfo
points (

lastInCard (
huaCards (
fong (
agree (
	maidiData (
	rewardFen ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("¶
GameLoginRsp
result (2.common.Result 
gameInfo (2.wzmj.GameInfo!
players (2.wzmj.GamePlayer
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
destroyVoteInfo (2.wzmj.VoteInfo"W
GamePlayerLoginRsp
result (2.common.Result!
players (2.wzmj.GamePlayer"n
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
diHu ("n
DealRsp
result (2.common.Result
cardsNum (
cards (
bankerId (
caiShens ("¤
OperateInfo
uid (

op (
opCard (
anCards (
buCards (
	handCards (
	targetUid (
noGiveUp (

opFongPais	 ("n
BuHua
uid (!
opInfo (2.wzmj.OperateInfo
huaCards (
buCards (

buCardsNum ("G
BuHuaRsp
result (2.common.Result
buHuas (2.wzmj.BuHua"ˆ
TurnRsp
result (2.common.Result
uid (
card (!
opInfo (2.wzmj.OperateInfo
huaCards (
haiDi ("J
OperationReq 
request (2.common.Request

op (
card ("ˆ
OperationRsp
result (2.common.Result!
opInfo (2.wzmj.OperateInfo!
myInfo (2.wzmj.OperateInfo

opFongPais ("8
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
	lostInfos (2.wzmj.LostInfo"â
EndInfo
uid (
	leftCards (
points (
totalPoints (
opcards (2.wzmj.OpCard
huCards (
winInfos (2.wzmj.WinInfo#

detailTais (2.wzmj.DetailTai!
	detailHus	 (2.wzmj.DetailHu
zimo
 (
huType (
csMoney (

lianZhuang (
diFen (
	rewardFen (
huTypeDetail ("£
	FinalInfo
uid (
	maxPoints (
winTimes (
	lostTimes (
totalPoints (
	totalZiMo (
	totalBeHu (
totalRewardFen (" 
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.wzmj.EndInfo#

finalInfos (2.wzmj.FinalInfo
draw (
destroy (":
Points
uid (
points (
totalPoints ("Y
	PointsRsp
result (2.common.Result
reason (
points (2.wzmj.Points"/
StartMaidiRsp
result (2.common.Result"0
StartDingdiRsp
result (2.common.Result"?
MaidiReq 
request (2.common.Request
	maidiData ("J
MaidiRsp
result (2.common.Result
uid (
	maidiData (