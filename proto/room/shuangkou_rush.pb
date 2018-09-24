
ü
room/shuangkou_rush.protoshuangkou_rushcommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("Ê

GamePlayer
player (2.room.Player
cards (
play (
banker (
pay (
ready (
offline (
agree (
agreeStartGame	 (
points
 (
totalPoints (
leftCardNum (
lastOutCard (
winMultiple (
loseMultiple (
bonusMultiple (
turn ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("ð
GameLoginRsp
result (2.common.Result*
gameInfo (2.shuangkou_rush.GameInfo
state (
	clockTime (+
players (2.shuangkou_rush.GamePlayer
masterId (
round (

totalRound (1
destroyVoteInfo	 (2.shuangkou_rush.VoteInfo3
startGameVoteInfo
 (2.shuangkou_rush.VoteInfo
basicPoints (
lastOutCard ("a
GamePlayerLoginRsp
result (2.common.Result+
players (2.shuangkou_rush.GamePlayer"r
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (
bankerId (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid ("n
DealRsp
result (2.common.Result
cards (
isBanker (
fanCard (
	hasCardId ("J
TurnRsp
result (2.common.Result

id (
lastOutCard ("?
OperationReq 
request (2.common.Request
cards ("U
OperationRsp
result (2.common.Result

id (

op (
cards ("_
StarRewardRsp
result (2.common.Result.

starReward (2.shuangkou_rush.StarReward"Z

StarReward

id (
winMultiple (
loseMultiple (
bonusMultiple ("‘
EndInfo
uid (
points (
totalPoints (
cards (
bonus (
times (

resultType (
resultTimes ("³
	FinalInfo
uid (
totalPoints (
bankerTimes (
winTimes (
	loseTimes (
zhaDanTimes (
maxTimes (
	maxPoints (
maxBonus	 ("¦
EndRsp
result (2.common.Result
	lastRound ()
endInfos (2.shuangkou_rush.EndInfo-

finalInfos (2.shuangkou_rush.FinalInfo
destroy (