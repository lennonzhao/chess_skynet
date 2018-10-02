
Ë?
datas/datas.protodatascommon.proto"õ
LoginReq 
request (2.common.Request
api (
sim (
imei (	
tel (	
account (	
password (	
ver (	

os	 (	
model
 (	
session (
nick (	
sex (
headUrl (	

ip ("ì
LoginRsp
result (2.common.Result

id (
sex (
nick (	
money (
diamond (
winTimes (
	drawTimes (
	loseTimes	 (
vipLevel
 (
headUrl (	
headUrlSmall (	
gameId (
roomId (
tableId (

ip (
new (
	lastLogin (
continuousLogin (

bankruptcy (">
	LogoutReq 
request (2.common.Request
session ("+
	LogoutRsp
result (2.common.Result"F
RankReq 
request (2.common.Request
ver (
rank (	"c
Rank
value (

id (
sex (
nick (	
headUrl (	
headUrlSmall (	"R
RankRsp
result (2.common.Result
ver (
ranks (2.datas.Rank"Œ
UserInfoReq 
request (2.common.Request
uid (
session (
code (
gameId (
roomId (
tableId ("Ë
UserInfoRsp
result (2.common.Result

id (
gender (
nick (	
money (
maxMoney (
diamond (
win (
draw	 (
lose
 (
vip (
headUrl (	
headUrlSmall (	
	lastLogin (
continuousLogin (

bankruptcy (
gameId (
roomId (
tableId (
masterId (#
	buildInfo (2.datas.BuildInfo

AA (

createTime (
session (

ip ("A
OnlineInfoReq 
request (2.common.Request
gameId ("1
TableOnlineInfo
tableId (
count ("L
RoomOnlineInfo
roomId (*

tableInfos (2.datas.TableOnlineInfo"i
OnlineInfoRsp
result (2.common.Result
gameId ((
	roomInfos (2.datas.RoomOnlineInfo"n
LoginGameReq 
request (2.common.Request
uid (
gameId (
roomId (
tableId (".
LoginGameRsp
result (2.common.Result"?
LogoutGameReq 
request (2.common.Request
uids ("/
LogoutGameRsp
result (2.common.Result"&
AddMoney
uid (
money ("M
AddMoneyReq 
request (2.common.Request
add (2.datas.AddMoney"R
AddMoneyRsp
result (2.common.Result#

moneyInfos (2.datas.AddMoney"*

AddDiamond
uid (
diamond ("Q
AddDiamondReq 
request (2.common.Request
add (2.datas.AddDiamond"X
AddDiamondRsp
result (2.common.Result'
diamondInfos (2.datas.AddDiamond"&
AddCharm
uid (
charm ("M
AddCharmReq 
request (2.common.Request
add (2.datas.AddCharm"R
AddCharmRsp
result (2.common.Result#

charmInfos (2.datas.AddCharm"2
Settle
uid (
money (
play ("M
	SettleReq 
request (2.common.Request
settles (2.datas.Settle"Q

SettleInfo
uid (
money (
win (
draw (
lose ("O
	SettleRsp
result (2.common.Result"
settles (2.datas.SettleInfo"V
NickReq 
request (2.common.Request
uid (
nick (	
gender ("G
NickRsp
result (2.common.Result
nick (	
gender ("Å

PlayerInfo

id (
gender (
nick (	
money (
maxMoney (
diamond (
win (
draw (
lose	 (
vip
 (
headUrl (	
headUrlSmall (	"T
PlayerInfoReq 
request (2.common.Request!
player (2.datas.PlayerInfo"/
PlayerInfoRsp
result (2.common.Result"A
Wallet
uid (
coin (
diamond (
rmb (")
Price
amount (
currency (	"T
PayReq 
request (2.common.Request
uid (
price (2.datas.Price"G
PayRsp
result (2.common.Result
wallet (2.datas.Wallet"O
SetWalletReq 
request (2.common.Request
wallet (2.datas.Wallet"M
SetWalletRsp
result (2.common.Result
wallet (2.datas.Wallet":
	WalletReq 
request (2.common.Request
uid ("J
	WalletRsp
result (2.common.Result
wallet (2.datas.Wallet"O
AddWalletReq 
request (2.common.Request
wallet (2.datas.Wallet"M
AddWalletRsp
result (2.common.Result
wallet (2.datas.Wallet"€
CheckAddWalletReq 
request (2.common.Request
coin (
diamond (
rmb (
wallet (2.datas.Wallet"R
CheckAddWalletRsp
result (2.common.Result
wallet (2.datas.Wallet"'
Session
uid (
session ("<

SessionReq 
request (2.common.Request
uids ("N

SessionRsp
result (2.common.Result 
sessions (2.datas.Session"8
BankruptInfo
uid (
times (
coin ("A
BankruptInfoReq 
request (2.common.Request
uids ("]
BankruptInfoRsp
result (2.common.Result*
bankruptInfos (2.datas.BankruptInfo"P
BankruptAwardInfo
uid (
times (
	awardCoin (
coin ("y
BankruptAwardReq 
request (2.common.Request
uids (
critical (
maxTimes (
	awardCoin ("h
BankruptAwardRsp
result (2.common.Result4
bankruptAwardInfos (2.datas.BankruptAwardInfo"&
	MoneyInfo
uid (
coin (":
MoneyReq 
request (2.common.Request
uids ("P
MoneyRsp
result (2.common.Result$

moneyInfos (2.datas.MoneyInfo"/
SessionsReq 
request (2.common.Request"?
SessionsRsp
result (2.common.Result
sessions ("›

FriendInfo
uid (
gender (
nick (	
headUrl (	
diamond (
session (
gameId (
roomId (
tableId	 ("@
	FriendReq 
request (2.common.Request
	friendIds ("S
	FriendRsp
result (2.common.Result&
friendInfos (2.datas.FriendInfo"a
FriendOnlineInfo
uid (
session (
gameId (
roomId (
tableId ("F
FriendOnlineReq 
request (2.common.Request
	friendIds ("e
FriendOnlineRsp
result (2.common.Result2
friendOnlineInfos (2.datas.FriendOnlineInfo">
	BuildInfo
round (
diamond (
	buildJson (	"
BuildReq 
request (2.common.Request#
	buildInfo (2.datas.BuildInfo

AA (
session (
gameId (
diamond ("V
BuildRsp
result (2.common.Result
code (
diamond (
uid (">
BuildInfoReq 
request (2.common.Request
code ("_
BuildInfoRsp
result (2.common.Result#
	buildInfo (2.datas.BuildInfo

AA ("M

DestroyReq 
request (2.common.Request
session (
code ("S

DestroyRsp
result (2.common.Result
diamond (
totalDiamond ("=
BuiltReq 
request (2.common.Request
session ("j
BuiltRsp
result (2.common.Result
codes (
gameId (
roomId (
tableId (" 

ReBuildReq 
request (2.common.Request#
	buildInfo (2.datas.BuildInfo

AA (
masterId (
code (
gameId (
diamond ("K

ReBuildRsp
result (2.common.Result
code (
diamond ("$
AddPlay
uid (
play ("K

AddPlayReq 
request (2.common.Request
add (2.datas.AddPlay"N

AddPlayRsp
result (2.common.Result 
addPlays (2.datas.AddPlay""
AddPay
uid (
pay ("I
	AddPayReq 
request (2.common.Request
add (2.datas.AddPay"+
	AddPayRsp
result (2.common.Result"U
UpdateAwalletsReq 
request (2.common.Request
wallets (2.datas.Wallet"T
WalletEx
uid (
session (
coin (
diamond (
rmb ("U
UpdateAwalletsRsp
result (2.common.Result 
wallets (2.datas.WalletEx"3
SessionCountReq 
request (2.common.Request"b
SessionCountRsp
result (2.common.Result
count (
logined (
playing ("(
	UserInfos

id (
diamond (">
UserInfosReq 
request (2.common.Request
uids ("S
UserInfosRsp
result (2.common.Result#
	userInfos (2.datas.UserInfos