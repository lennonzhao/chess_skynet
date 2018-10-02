
Õ
room/doudizhu_yansuo.protodoudizhu_yansuocommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("Å

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
turn (
outcards	 (
points
 (
agree (
outLandlordCards (
winOrder (
laizis ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("π
GameLoginRsp
result (2.common.Result+
gameInfo (2.doudizhu_yansuo.GameInfo,
players (2.doudizhu_yansuo.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
maxcards	 (2
destroyVoteInfo
 (2.doudizhu_yansuo.VoteInfo
	maxLaizis ("b
GamePlayerLoginRsp
result (2.common.Result,
players (2.doudizhu_yansuo.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid (")
DealInfo
uid (
cardsNum ("ä
DealRsp
result (2.common.Result
cardsNum (
cards (
firstUid (,
	dealInfos (2.doudizhu_yansuo.DealInfo"z
TurnRsp
result (2.common.Result
uid (
opTime (
outcards (
skipUids (
laizis ("R
OperationReq 
request (2.common.Request
outcards (
laizis ("ö
OperationRsp
result (2.common.Result
uid (
outcards (
lastOne (
outLandlordCards (
winOrder (
laizis ("
Outcards
cards ("µ
EndInfo
uid (
	leftcards (
bombNum (
points (
totalPoints (+
outcards (2.doudizhu_yansuo.Outcards
winOrder (
landlordCards ("*
	RoundInfo
points (
infos (	"]
	FinalInfo
uid (.

roundInfos (2.doudizhu_yansuo.RoundInfo
totalPoints ("º
EndRsp
result (2.common.Result
	lastRound (*
endinfos (2.doudizhu_yansuo.EndInfo.

finalInfos (2.doudizhu_yansuo.FinalInfo
destroy (

totalBombs (":
Points
uid (
points (
totalPoints ("d
	PointsRsp
result (2.common.Result
reason ('
points (2.doudizhu_yansuo.Points