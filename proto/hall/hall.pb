
›_
hall/hall.protohallcommon.proto"7
Basic
api (
verName (	
userType ("0
HeartBeatReq 
request (2.common.Request".
HeartBeatRsp
result (2.common.Result"’
UserInfo

id (&

playerInfo (2.common.PlayerInfo
lastLoginTime (	

isRegister (
session (	
firstPayStatus ("=

ReConnInfo
gameId (
roomId (
tableId ("7
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
 (	"ü
LoginRsp
result (2.common.Result 
userInfo (2.hall.UserInfo
userType (
isBinded (
	thirdInfo (	

ip ($

reConnInfo (2.hall.ReConnInfo!
	gameInfos (2.hall.GameInfo
config	 (2.hall.Config
proxyUrl
 (	
voiceUrl (	
downloadUrl (	
shareUrl (	
	updateUrl (	
	wechatPay (
activityUrl (	"/
GameInfoReq 
request (2.common.Request"B
GameInfo

id (
name (	
type (
online (	"P
GameInfoRsp
result (2.common.Result!
	gameInfos (2.hall.GameInfo"J
RankInfoReq 
request (2.common.Request
ver (
name ("Z

RankPlayer&

playerInfo (2.common.PlayerInfo
	earnMoney (
	earnCharm ("k
RankInfoRsp
result (2.common.Result
name (
ver (!
players (2.hall.RankPlayer"/
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
img (	"­
	MarketRsp
result (2.common.Result
type (&
diamondList (2.hall.DiamondInfo 
goldList (2.hall.GoldInfo(
ornamentList (2.hall.OrnamentInfo"r
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
props (2.common.Prop"I
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

ip (";
UserInfoReq 
request (2.common.Request

id ("·
UserInfoRsp
result (2.common.Result$
baseInfo (2.common.PlayerInfo
maxMoney (
charm (
isLike (
vipPoint (
vipMaxPoint (

ip ("A
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
diamond ("„
WorldChatBct
result (2.common.Result
uid (
content (	
nick (	
type (
vip (
extra (	"›
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
vipInfos (2.hall.VipInfo"5
FirstPay
type (
name (	
count ("/
FirstPayReq 
request (2.common.Request"}
FirstPayRsp
result (2.common.Result
payRmb (
title (	
tips (	!
	firstPays (2.hall.FirstPay"š

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
request (2.common.Request"R
ProxyInfoRsp
result (2.common.Result
proxyUrl (	
bindCode (":
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
result (2.common.Result"+
Transferred
uid (
diamond ("e
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
	gameTypes (">
	BuildInfo
round (
diamond (
	buildJson (	"c
BuildConfig
gameType (#

buildInfos (2.hall.BuildInfo

AA (
	buildJson (	"U
BuildConfigsRsp
result (2.common.Result"
configs (2.hall.BuildConfig"t
	PointsReq 
request (2.common.Request
gameType (
start (
max (
needTodayPoints ("„

PointsInfo
code (
masterId (
time (
round (
points ()
pointsDetails (2.hall.PointsDetail"Ž
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
totalPoints ("[
RoundPoints
round ()
PointsDetails (2.hall.PointsDetail

playbackId (	"y
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
wechatInfos (2.hall.WechatInfo"8
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
uid (