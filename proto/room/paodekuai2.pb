
ê
room/paodekuai2.proto
paodekuai2common.protoroom/room.proto"Z
GameInfo
ante (
bomb ($
	buildInfo (2.common.BuildInfo
code ("Å

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
agree ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("¾
GameLoginRsp
result (2.common.Result&
gameInfo (2.paodekuai2.GameInfo'
players (2.paodekuai2.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (
maxcards	 (-
destroyVoteInfo
 (2.paodekuai2.VoteInfo
bomb333 (
firstOutCard ("]
GamePlayerLoginRsp
result (2.common.Result'
players (2.paodekuai2.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("r
DealRsp
result (2.common.Result
cardsNum (
cards (
firstUid (
firstOutCard ("X
TurnRsp
result (2.common.Result
uid (
opTime (
outcards ("B
OperationReq 
request (2.common.Request
outcards ("o
OperationRsp
result (2.common.Result
uid (
outcards (
lastOne (
bomb333 ("
Outcards
cards ("Á
EndInfo
uid (
	leftcards (
bombNum (
points (

bombPoints (
totalPoints (
loseType (&
outcards (2.paodekuai2.Outcards

hongTaoShi	 ("*
	RoundInfo
points (
infos (	"X
	FinalInfo
uid ()

roundInfos (2.paodekuai2.RoundInfo
totalPoints ("±
EndRsp
result (2.common.Result
	lastRound (%
endinfos (2.paodekuai2.EndInfo)

finalInfos (2.paodekuai2.FinalInfo
	leftcards (
destroy (":
Points
uid (
points (
totalPoints ("_
	PointsRsp
result (2.common.Result
reason ("
points (2.paodekuai2.Points