
ç
room/aqjj.protoaqjjcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("ã

GamePlayer
player (2.room.Player
play (
offline (
pay (
ready (
cardsNum (
cards (
exposeCards (
turn	 (
outcards
 (
points (
agree (
outtype (
winOrder (
laizis (
parterId (
side (

happyScore (
	bombScore (
score ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("à
GameLoginRsp
result (2.common.Result 
gameInfo (2.aqjj.GameInfo!
players (2.aqjj.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
maxcards	 ('
destroyVoteInfo
 (2.aqjj.VoteInfo
	maxLaizis (
maxType (
deskBombScore (
card (
bankerId ("W
GamePlayerLoginRsp
result (2.common.Result!
players (2.aqjj.GamePlayer"`
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
cardsNum ("
DealRsp
result (2.common.Result
cardsNum (
cards (
firstUid (!
	dealInfos (2.aqjj.DealInfo"œ
TurnRsp
result (2.common.Result
uid (
opTime (
outcards (
skipUids (
laizis (
outtype (
firstOp ("
Cards
cards ("6

HappyCards
uid (
cardss (2.aqjj.Cards"G

ParterInfo
uid (
parterId (
card (
side ("“
HappyAndParterRsp
result (2.common.Result$

happyCards (2.aqjj.HappyCards$

parterInfo (2.aqjj.ParterInfo

knowParter ("P
PlayerScore
uid (

happyScore (
	bombScore (
score ("M

BombSocore
uid (
	bombScore (
own (

happyScore ("r
ScoreRsp
result (2.common.Result!
scores (2.aqjj.PlayerScore#
	bombScore (2.aqjj.BombSocore">
PlayerCards
uid (
exposeCards (
cards ("2
PlayerCardsReq 
request (2.common.Request"X
PlayerCardsRsp
result (2.common.Result&
playerCards (2.aqjj.PlayerCards"2
ExposeCardsReq 
request (2.common.Request"X
ExposeCardsRsp
result (2.common.Result&
playerCards (2.aqjj.PlayerCards"0
DropCardsReq 
request (2.common.Request";
DropCardsRsp
result (2.common.Result
uid ("c
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
winOrder (
laizis (
outtype (
cardsNum	 ("'
LostInfo
uid (
points ("Z
WinInfo
type (
points (
params (!
	lostInfos (2.aqjj.LostInfo"
Outcards
cards ("â
EndInfo
uid (
	leftcards (

bombPoints (
points (
totalPoints ( 
outcards (2.aqjj.Outcards
winOrder (
happyPoints (
bucklePoints	 (
winInfos
 (2.aqjj.WinInfo"*
	RoundInfo
points (
infos (	"R
	FinalInfo
uid (#

roundInfos (2.aqjj.RoundInfo
totalPoints ("’
EndRsp
result (2.common.Result
	lastRound (
endinfos (2.aqjj.EndInfo#

finalInfos (2.aqjj.FinalInfo
destroy (":
Points
uid (
points (
totalPoints ("Y
	PointsRsp
result (2.common.Result
reason (
points (2.aqjj.Points