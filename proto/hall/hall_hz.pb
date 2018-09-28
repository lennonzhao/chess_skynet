
é‰
hall/hall_hz.protohallcommon.proto"[
Basic
api (
verName (	
userType (
hotCode (
	gameTypes ("0
HeartBeatReq 
request (2.common.Request".
HeartBeatRsp
result (2.common.Result"Ÿ
UserInfo

id (&

playerInfo (2.common.PlayerInfo
lastLoginTime (	

isRegister (
session (	
firstPayStatus (
md5 (	"7
Config
worldchatCost (
bindProxyAward ("É
LoginReq 
request (2.common.Request
basic (2.hall.Basic
imei (	
simType (
tel (	
	modelName (	

os (	
account (	
password	 (	
	thirdInfo
 (	"‚
LoginRsp
result (2.common.Result 
userInfo (2.hall.UserInfo
userType (
isBinded (
	thirdInfo (	

ip (!
	gameInfos (2.hall.GameInfo
config	 (2.hall.Config
proxyUrl
 (	
voiceUrl (	
downloadUrl (	
shareUrl (	
	updateUrl (	
	wechatPay (
activityUrl (	
	builtCode (
playCode (

builtCodes (
isAgent (
	noticeUrl (	
	broadcast (	
	inviteUrl (	
gameType (
matchGameType ("/
GameInfoReq 
request (2.common.Request"P
GameInfo

id (
name (	
type (
online (	
flag ("P
GameInfoRsp
result (2.common.Result!
	gameInfos (2.hall.GameInfo"=
RankInfoReq 
request (2.common.Request
name ("›

RankPlayer&

playerInfo (2.common.PlayerInfo

rankPoints (
rankWinTimes (
rankDrawTimes (
rankLoseTimes (
award ("…
RankSelfPlayer$

rankPlayer (2.hall.RankPlayer
ranking (
	rankAward (
acceptedAward (

acceptable ("Œ
RankInfoRsp
result (2.common.Result
name (%
rankPlayers (2.hall.RankPlayer(

selfPlayer (2.hall.RankSelfPlayer">
RankAwardReq 
request (2.common.Request
name ("`
RankAwardRsp
result (2.common.Result
name (
	rankAward (
diamond ("/
TaskInfoReq 
request (2.common.Request"v
SingleTaskInfo

id (
name (	
award (	
status (
title (	
target (
nowP ("R
TaskInfoRsp
result (2.common.Result#
tasks (2.hall.SingleTaskInfo"<
TaskAwardReq 
request (2.common.Request

id ("v
TaskAwardRsp
result (2.common.Result

awardMoney (

id (&
nextTask (2.hall.SingleTaskInfo"7
PushRsp
result (2.common.Result
json (	";
	MarketReq 
request (2.common.Request
type ("
DiamondInfo

id (
name (	
price (
num (
giftNum (
tag (
payType (
extInfo (	
img	 (	"|
GoldInfo

id (
name (	
price (
num (
giftNum (
tag (
payType (
img (	"°
OrnamentInfo

id (
name (	
des (	
price (
num (
time (	
tag (
payType (
vipLimit	 (

charmLimit
 (
img (	"¶
	YuekaInfo

id (
name (	
yuanjiaDamond (	
price (	
rounds (
giftNum (
days (
tag (
payType	 (
extInfo
 (	
img (	"Ñ
	MarketRsp
result (2.common.Result
type (&
diamondList (2.hall.DiamondInfo 
goldList (2.hall.GoldInfo(
ornamentList (2.hall.OrnamentInfo"
	yuekaList (2.hall.YuekaInfo"r
OrderReq 
request (2.common.Request
gameType (
goodId (
payType (
	extraJson (	"o
OrderRsp
result (2.common.Result
orderId (	
goodId (
payType (
	extraJson (	";
ExchangeReq 
request (2.common.Request

id ("u
ExchangeRsp
result (2.common.Result

id (
wallet (2.common.Wallet
prop (2.common.Prop"Z
DeliverGoodsRsp
result (2.common.Result
num (
total (
msg (	"^
UploadImageReq 
request (2.common.Request
count (
index (
data ("U
UploadImageRsp
result (2.common.Result
imgUrl (	
imgUrlSmall (	"/
FeedbackReq 
request (2.common.Request"C

FeedRecord
type (
msg (	
nick (	
time ("P
FeedbackRsp
result (2.common.Result!
records (2.hall.FeedRecord":

MailDelReq 
request (2.common.Request

id ("8

MailDelRsp
result (2.common.Result

id (":

MailboxReq 
request (2.common.Request

id ("†
MailInfo

id (
type (
title (	
content (	
time (
senderId (

senderName (	
link ("K

MailboxRsp
result (2.common.Result
mails (2.hall.MailInfo"?
MailboxAwardReq 
request (2.common.Request

id ("z
MailboxAwardRsp
result (2.common.Result

id (
wallet (2.common.Wallet
props (2.common.Prop"M
YuekaInfoReq 
request (2.common.Request
uid (
isList ("|
YuekaOneInfo

id (
type (
status (
rounds (
days (

start_time (
end_time ("
YuekaInfoRsp
result (2.common.Result!
infos (2.hall.YuekaOneInfo
yuekaUseRounds (
yuekaNotUseNum ("V
YuekaUseReq 
request (2.common.Request
uid (
type (

id ("
YuekaUseRsp
result (2.common.Result
type (

id (
yuekaUseRounds (
yuekaNotUseNum (
yuekaEndTime ("I
LikeReq 
request (2.common.Request
likeId (
like ("V
LikeRsp
result (2.common.Result
likeId (
like (
charm ("+
PropReq 
request (2.common.Request"F
PropRsp
result (2.common.Result
props (2.common.Prop"M
	WalletReq 
request (2.common.Request
wallet (2.common.Wallet"K
	WalletRsp
result (2.common.Result
wallet (2.common.Wallet"O
NickGenderReq 
request (2.common.Request
nick (	
gender ("M
NickGenderRsp
result (2.common.Result
nick (	
gender ("/
SelfInfoReq 
request (2.common.Request"
SelfInfoRsp
result (2.common.Result$
baseInfo (2.common.PlayerInfo
maxMoney (
props (2.common.Prop
charm (

ip ("<
UserInfoReq 
request (2.common.Request
uid ("p
UserInfoRsp
result (2.common.Result$
baseInfo (2.common.PlayerInfo

ip (
isAgent ("A
BankruptInfoReq 
request (2.common.Request
type ("…
BankruptInfoRsp
result (2.common.Result
type (

awardMoney (
leftNum (
totalNum (
money ("-
	SignInReq 
request (2.common.Request"C
SignInAward

id (
name (	
prop (2.common.Prop"S

SignInInfo 
award (2.hall.SignInAward
continueDays (
state ("G
DialInfo 
award (2.hall.SignInAward
pay (2.common.Prop"—
	SignInRsp
result (2.common.Result$

signInInfo (2.hall.SignInInfo!
	dialInfo1 (2.hall.DialInfo!
	dialInfo2 (2.hall.DialInfo"l
WorldChatReq 
request (2.common.Request
nick (	
content (	
type (
extra (	"_
WorldChatRsp
result (2.common.Result
labaNum (
money (
diamond ("“
WorldChatBct
result (2.common.Result
uid (
content (	
nick (	
type (
vip (
extra (	
count ("›
AwardBox
type (

id (

createTime (
openTime (
curTime (

awardMoney (
awardDiamond (
costDiamonds ("/
AwardBoxReq 
request (2.common.Request"Q
AwardBoxRsp
result (2.common.Result"

awardBoxes (2.hall.AwardBox"c
AwardBoxOpenReq 
request (2.common.Request
type (

id (
costDiamonds ("•
AwardBoxOpenRsp
result (2.common.Result
type (

id (

awardMoney (
awardDiamond (
wallet (2.common.Wallet"%
VipInfo
vip (
descs (	".

VipInfoReq 
request (2.common.Request"M

VipInfoRsp
result (2.common.Result
vipInfos (2.hall.VipInfo"\
FirstPay
type (
name (	
num (
gift (
price (

id ("/
FirstPayReq 
request (2.common.Request"P
FirstPayRsp
result (2.common.Result!
	firstPays (2.hall.FirstPay"š

FriendInfo
uid (
gender (
nick (	
headUrl (	
diamond (
online (
gameId (
roomId (
tableId	 ("-
	FriendReq 
request (2.common.Request"R
	FriendRsp
result (2.common.Result%
friendInfos (2.hall.FriendInfo"`
FriendOnlineInfo
uid (
online (
gameId (
roomId (
tableId	 ("3
FriendOnlineReq 
request (2.common.Request"d
FriendOnlineRsp
result (2.common.Result1
friendOnlineInfos (2.hall.FriendOnlineInfo"B
AddFriendReq 
request (2.common.Request
friendId ("@
AddFriendRsp
result (2.common.Result
friendId ("E
RemoveFriendReq 
request (2.common.Request
friendId ("C
RemoveFriendRsp
result (2.common.Result
friendId ("D
BlackFriendReq 
request (2.common.Request
friendId ("B
BlackFriendRsp
result (2.common.Result
friendId ("D
WhiteFriendReq 
request (2.common.Request
friendId ("B
WhiteFriendRsp
result (2.common.Result
friendId ("s
	InviteReq 
request (2.common.Request
	inviteeId (
gameId (
code (
inviterInfo (	"q
	InviteRsp
result (2.common.Result
	inviterId (
gameId (
code (
inviterInfo (	"l
InviteConfirmReq 
request (2.common.Request
	inviterId (
accept (
inviteeInfo (	"j
InviteConfirmRsp
result (2.common.Result
	inviteeId (
accept (
inviteeInfo (	"F
BindProxyReq 
request (2.common.Request
proxyAccount ("D
BindProxyRsp
result (2.common.Result
proxyAccount ("0
ProxyInfoReq 
request (2.common.Request"¬
ProxyInfoRsp
result (2.common.Result
proxyUrl (	
bindCode (
proxyWechatId (	
proxyWechatNick (	
changeBinding (
	changeFee (":
	FollowReq 
request (2.common.Request
uid ("i
	FollowRsp
result (2.common.Result
uid (
gameId (
roomId (
tableId ("I
	PdkLogReq 
request (2.common.Request
start (
max ("Y

PdkLogInfo
code (
masterId (
time (
round (
points ("g
	PdkLogRsp
result (2.common.Result%
pdkLogInfos (2.hall.PdkLogInfo
todayPoints ("A
PdkDetailLogReq 
request (2.common.Request
time ("p
PdkDetailLog
uid (
nick (	
points (
totalPoints (
bombs (
	leftcards ("L
PdkDetailLogInfo
round ()
pdkDetailLogs (2.hall.PdkDetailLog"r
PdkDetailLogRsp
result (2.common.Result
time (1
pdkDetailLogInfos (2.hall.PdkDetailLogInfo",
ShareReq 
request (2.common.Request"*
ShareRsp
result (2.common.Result"T
Transferred
uid (
diamond (
totalDiamond (
	extraInfo (	"e
TransferredReq 
request (2.common.Request 
trans (2.hall.Transferred
eventId ("R
TransferredRsp
result (2.common.Result 
trans (2.hall.Transferred"/
OfficialReq 
request (2.common.Request"s
OfficialRsp
result (2.common.Result
news (	
contact (	

disclaimer (	
	promotion (	"3
SessionCountReq 
request (2.common.Request"b
SessionCountRsp
result (2.common.Result
count (
logined (
playing ("‰
SendMail
uid (
type (
title (	
content (	
time (
senderId (

senderName (	
awards ("_
SendMailReq 
request (2.common.Request
password (	
mail (2.hall.SendMail"-
SendMailRsp
result (2.common.Result"F
BuildConfigsReq 
request (2.common.Request
	gameTypes ("X
BuildConfigsRsp
result (2.common.Result%

buildInfos (2.common.BuildInfo"t
	PointsReq 
request (2.common.Request
gameType (
start (
max (
needTodayPoints ("–

PointsInfo
code (
masterId (
time (
round (
points ()
pointsDetails (2.hall.PointsDetail
gameType ("Ž
	PointsRsp
result (2.common.Result
gameType (%
pointsInfos (2.hall.PointsInfo
todayPoints (
totalPoints ("S
PointsDetailReq 
request (2.common.Request
gameType (
time ("N
PointsDetail
uid (
nick (	
points (
totalPoints ("l
RoundPoints
round ()
PointsDetails (2.hall.PointsDetail

playbackId (	
endTime (	"y
PointsDetailRsp
result (2.common.Result
gameType (
time (&
roundPoints (2.hall.RoundPoints"2
ProxyWechatReq 
request (2.common.Request"

WechatInfo
account (	"W
ProxyWechatRsp
result (2.common.Result%
wechatInfos (2.hall.WechatInfo"R
BuildReq 
request (2.common.Request$
	buildInfo (2.common.BuildInfo"I
BuildRsp
result (2.common.Result
code (
diamond ("8
PlaybackInfo
uids (
opTime (

pb (	";
PlaybackReq 
request (2.common.Request

id (	"e
PlaybackRsp
result (2.common.Result)
playbackInfos (2.hall.PlaybackInfo
uid ("/
CoinInfoReq 
request (2.common.Request"ž
CoinInfo
name (	
type (
capacity (
level (

admittance (
flag (

build_json (	
ante (
	onlineNum	 ("P
CoinInfoRsp
result (2.common.Result!
	coinInfos (2.hall.CoinInfo"2
StateConfigReq 
request (2.common.Request"S
StateConfigRsp
result (2.common.Result
dayJson (	
infoJson (	"2
DaySignInfoReq 
request (2.common.Request"?
DaySignInfo
day (
	awardType (
awardNum ("u
DaySignInfoRsp
result (2.common.Result 
infos (2.hall.DaySignInfo
continue (
awarded (".

DaySignReq 
request (2.common.Request"^

DaySignRsp
result (2.common.Result
continue (
wallet (2.common.Wallet"1
InviteInfoReq 
request (2.common.Request"D
Invitee&

playerInfo (2.common.PlayerInfo
	curRounds ("f

InviteInfo
level (
totalInvitees (
	awardType (
awardNum (
award ("©
InviteInfoRsp
result (2.common.Result%
inviteInfos (2.hall.InviteInfo
totalRounds (
curInvitees ('
unfinishInvitees (2.hall.Invitee"B
InviteBindReq 
request (2.common.Request
inviter ("/
InviteBindRsp
result (2.common.Result"A
InviteAwardReq 
request (2.common.Request
level ("_
InviteAwardRsp
result (2.common.Result
wallet (2.common.Wallet
level ("/
PropInfoReq 
request (2.common.Request"I
PropInfo

id (
name (	
costType (
	costValue ("P
PropInfoRsp
result (2.common.Result!
	propInfos (2.hall.PropInfo"M
AuthenticateReq 
request (2.common.Request
name (	

id (	"1
AuthenticateRsp
result (2.common.Result"ƒ
ActivityInfo

id (
desc (	
progress (
target (

rewardType (
	rewardNum (
hasAward ("2
ActivityCfgReq 
request (2.common.Request"¯
ActivityCfgRsp
result (2.common.Result#
actList (2.hall.ActivityInfo

rewardType (
	rewardNum (
curNum (
hasCash (
leftTime ("@
ActivityAwardReq 
request (2.common.Request

id ("e
ActivityAwardRsp
result (2.common.Result

rewardType (
	rewardNum (

id ("3
ActivityCashReq 
request (2.common.Request"X
ActivityCashRsp
result (2.common.Result

rewardType (
	rewardNum ("0
FreeAwardReq 
request (2.common.Request"S
FreeAwardRsp
result (2.common.Result
	awardType (
awardNum ("2
FreeReceiveReq 
request (2.common.Request"i
FreeReceiveRsp
result (2.common.Result
	awardType (

awardDelta (
awardNum ("0
RedPacketReq 
request (2.common.Request"@
RedPacketRsp
result (2.common.Result
awardNum ("J
ThroughMatchListReq 
request (2.common.Request
	gameTypes ("¿
ThroughMatchInfo
gameType (
progress (
maxProgress (
progressStatus (
rebirthDiamond (
rebirthShare (
rebirthCard (
needRebirthCard ("m
ThroughMatchListRsp
result (2.common.Result$
list (2.hall.ThroughMatchInfo
awardNum ("9
ThroughMatchRecordReq 
request (2.common.Request"h
ThroughMatchRecord
gameType (
time (
	awardType (
awardNum (
title (	"r
ThroughMatchRecordRsp
result (2.common.Result&
list (2.hall.ThroughMatchRecord
	leftAward ("J
ThroughMatchCashReq 
request (2.common.Request
	asDiamond ("
ThroughMatchCashRsp
result (2.common.Result
	awardType (
awardNum (
totalNum (
	leftAward ("8
ThroughCardRecordReq 
request (2.common.Request"Z
ThroughCardInfo
uid (
headUrl (	
nick (	
count (
time ("p
ThroughCardRecordRsp
result (2.common.Result#
list (2.hall.ThroughCardInfo
rebirthCard (