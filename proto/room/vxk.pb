
¢
room/vxk.protovxkcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("Ë

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
agree (
outtype (
winOrder ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("’
GameLoginRsp
result (2.common.Result
gameInfo (2.vxk.GameInfo 
players (2.vxk.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
maxcards	 (&
destroyVoteInfo
 (2.vxk.VoteInfo
maxType (
card (
bankerId ( 
	flipCards (2.vxk.FlipCard"V
GamePlayerLoginRsp
result (2.common.Result 
players (2.vxk.GamePlayer"`
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
cardsNum ("ö
DealRsp
result (2.common.Result
cardsNum (
cards (
firstUid ( 
	dealInfos (2.vxk.DealInfo
uid1 (
uid2 ("å
TurnRsp
result (2.common.Result
uid (
opTime (
outcards (
skipUids (
outtype (
firstOp (">
PlayerCards
uid (
exposeCards (
cards ("2
PlayerCardsReq 
request (2.common.Request"W
PlayerCardsRsp
result (2.common.Result%
playerCards (2.vxk.PlayerCards"4
FlipCard
card (
index (
uid ("K
FlipCardRsp
result (2.common.Result
cards (2.vxk.FlipCard"g
ChangeSeatRsp
result (2.common.Result
id1 (
id2 (
seat1 (
seat2 ("c
OperationReq 
request (2.common.Request
outcards (
laizis (
outtype ("£
OperationRsp
result (2.common.Result
uid (
outcards (
lastOne (
winOrder (
outtype (
cardsNum (
tuosan ("'
LostInfo
uid (
points ("Y
WinInfo
type (
points (
params ( 
	lostInfos (2.vxk.LostInfo"
Outcards
cards ("ı
EndInfo
uid (
	leftcards (
points (
totalPoints (
outcards (2.vxk.Outcards
winOrder (
tuosanPoints (
guansanPoints (
bucklePoints	 (
winInfos
 (2.vxk.WinInfo
winType ("*
	RoundInfo
points (
infos (	"Q
	FinalInfo
uid ("

roundInfos (2.vxk.RoundInfo
totalPoints ("ê
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.vxk.EndInfo"

finalInfos (2.vxk.FinalInfo
destroy (":
Points
uid (
points (
totalPoints ("X
	PointsRsp
result (2.common.Result
reason (
points (2.vxk.Points