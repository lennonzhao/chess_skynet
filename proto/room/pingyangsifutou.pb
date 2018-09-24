
ú 
room/pingyangsifutou.protopingyangsifutoucommon.protoroom/room.proto"L
GameInfo
ante ($
	buildInfo (2.common.BuildInfo
code ("«

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
agree (
agreeStartGame (
curScore (
curGong (
ranking (
friendCards (
feiFlag (
pass (
yuanZiCards (	
biggestCards (	
gongXianBombCards (	
giveUp (
banker ("`
VoteInfo

promoterId (
poll (
time (

expiryTime (
leftTime ("ó
GameLoginRsp
result (2.common.Result+
gameInfo (2.pingyangsifutou.GameInfo,
players (2.pingyangsifutou.GamePlayer
state (
masterId (
	clockTime (
round (

totalRound (2
destroyVoteInfo	 (2.pingyangsifutou.VoteInfo4
startGameVoteInfo
 (2.pingyangsifutou.VoteInfo
maxcards (
curTableScore ("b
GamePlayerLoginRsp
result (2.common.Result,
players (2.pingyangsifutou.GamePlayer"`
StartRsp
result (2.common.Result
round (

totalRound (
	readyUids (",
ReadyReq 
request (2.common.Request"7
ReadyRsp
result (2.common.Result
uid (",
ChangeSeatInfos
uid (
card ("´
SwitchSeatRsp
result (2.common.Result9
changeSeatInfos (2 .pingyangsifutou.ChangeSeatInfos

switchUid1 (

switchUid2 (
seatId1 (
seatId2 ("˜
DealRsp
result (2.common.Result
cardsNum (
cards (
bankerId (

bankerCard (
	firstOpId (
firstOpCard ("F
GongXianFenInfo
uid (
	changeFen (
gongXianFen ("a
YuanZiCardInfo
uid (
yuanZiCards (	
gongXianFen (
totalGongXianFen ("n
ShowYuanZiCardsRsp
result (2.common.Result8
yuanZiCardInfos (2.pingyangsifutou.YuanZiCardInfo"@
StartGiveUpRsp
result (2.common.Result
opTime ("-
	GiveUpReq 
request (2.common.Request"8
	GiveUpRsp
result (2.common.Result
uid ("M
StartShowBiggestCardTypeRsp
result (2.common.Result
opTime (":
ShowBiggestCardTypeReq 
request (2.common.Request"B
BiggestCardTypeInfo
uid (
cards (
ranking ("|
ShowBiggestCardTypeRsp
result (2.common.ResultB
biggestCardTypeInfos (2$.pingyangsifutou.BiggestCardTypeInfo"O
StartShowGongXianBombCardsRsp
result (2.common.Result
opTime ("<
ShowGongXianBombCardsReq 
request (2.common.Request"m
GongxianBombCardInfo
uid (
gongXianBombCards (	
gongXianFen (
totalGongXianFen ("
ShowGongXianBombCardsRsp
result (2.common.ResultD
gongxianBombCardInfos (2%.pingyangsifutou.GongxianBombCardInfo
finish (")
FeiInfo
uid (
	isFeiFlag ("w
TurnRsp
result (2.common.Result
uid (
opTime (
outcards (
feiFlag (
pass ("T
OperationReq 
request (2.common.Request
outcards (
isFeiPai ("‡
OperationRsp
result (2.common.Result
uid (
outcards (
curTableScore (
ranking (
isFeiPai ("a

ZhuaFenRsp
result (2.common.Result
uid (
zhuaFen (
curTableScore ("l
GongXianFenRsp
result (2.common.Result:
gongXianFenInfos (2 .pingyangsifutou.GongXianFenInfo"…
EndInfo
uid (
	leftcards (
points (
totalPoints (
zhuaFen (
gongXianFen (
ranking ("
	FinalInfo
uid (
	maxPoints (
maxBombs (
shuangKouTimes (
winTimes (
	lostTimes (
totalPoints ("¨
EndRsp
result (2.common.Result
	lastRound (*
endinfos (2.pingyangsifutou.EndInfo.

finalInfos (2.pingyangsifutou.FinalInfo
destroy (":
Points
uid (
points (
totalPoints ("d
	PointsRsp
result (2.common.Result
reason ('
points (2.pingyangsifutou.Points"K
FriendCardRsp
result (2.common.Result
uid (
cards (