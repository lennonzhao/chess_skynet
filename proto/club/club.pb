
ÄI
club/club.protoclubcommon.proto"=
EnterPageReq 
request (2.common.Request
uid ("L
EnterPageRsp
result (2.common.Result
diamondForCreateClub ("=
LeavePageReq 
request (2.common.Request
uid (".
LeavePageRsp
result (2.common.Result"O

ClubConfig
verify (
question (	
answer (	
freezed ("…
ClubInfo

id (
name (	
desc (	

inviteCode (	

createTime (	#
creator (2.common.PlayerInfo
memberCount (
	gameTypes (	 
config	 (2.club.ClubConfig
level
 (
payWays (
undealApplyMessage ("o
CreateClubReq 
request (2.common.Request
name (	
desc (	 
config (2.club.ClubConfig"Q
CreateClubRsp
result (2.common.Result 
clubInfo (2.club.ClubInfo"Q
EditClubReq 
request (2.common.Request 
clubInfo (2.club.ClubInfo"O
EditClubRsp
result (2.common.Result 
clubInfo (2.club.ClubInfo"B
DestroyClubReq 
request (2.common.Request
clubId ("@
DestroyClubRsp
result (2.common.Result
clubId ("O
ClubListReq 
request (2.common.Request
uid (
	queryType ("c
ClubListRsp
result (2.common.Result
	queryType (!
	clubInfos (2.club.ClubInfo"<
RuleInfo

id ($
	buildInfo (2.common.BuildInfo"g
CreateRuleReq 
request (2.common.Request
clubId ($
	buildInfo (2.common.BuildInfo"a
CreateRuleRsp
result (2.common.Result
clubId ( 
ruleInfo (2.club.RuleInfo"a
EditRuleReq 
request (2.common.Request
clubId ( 
ruleInfo (2.club.RuleInfo"_
EditRuleRsp
result (2.common.Result
clubId ( 
ruleInfo (2.club.RuleInfo"B
DestroyRuleReq 
request (2.common.Request
ruleId ("@
DestroyRuleRsp
result (2.common.Result
ruleId ("?
RuleListReq 
request (2.common.Request
clubId ("P
RuleListRsp
result (2.common.Result!
	ruleInfos (2.club.RuleInfo"D
ApplyJoinClubReq 
request (2.common.Request
clubId ("s
ApplyJoinClubRsp
result (2.common.Result 
clubInfo (2.club.ClubInfo
clubId (
level ("`
AllowJoinClubReq 
request (2.common.Request
clubId (
uid (
allow ("€
AllowJoinClubRsp
result (2.common.Result 
clubInfo (2.club.ClubInfo
clubId (
uid (
level ("L
LeftClubReq 
request (2.common.Request
clubId (
uid ("J
LeftClubRsp
result (2.common.Result
clubId (
uid ("´

MemberInfo
uid (
level (
headUrl (	
nick (	
totalPlayTimes (
	playTimes (
joinTime (	
online (
roomId	 (
gender
 ("l
MemberListReq 
request (2.common.Request
clubId (
start (
count (
uid ("‘
MemberListRsp
result (2.common.Result%
memberInfos (2.club.MemberInfo
start (
count (
uid (
clubId ("G
MemberShieldListReq 
request (2.common.Request
clubId ("\
MemberShieldListRsp
result (2.common.Result%
memberInfos (2.club.MemberInfo"b
GrantPrivilegesReq 
request (2.common.Request
clubId (
uid (
level ("`
GrantPrivilegesRsp
result (2.common.Result
clubId (
uid (
level ("2

ClubPlayer$
userInfo (2.common.PlayerInfo"ß
ClubRoom
code ( 
ruleInfo (2.club.RuleInfo
round (
state (
validityPeriod (%
clubPlayers (2.club.ClubPlayer

createTime (
leftTime (
clubId	 (
masterId
 ("w
CreateRoomReq 
request (2.common.Request
ruleId (
clubId ($
	buildInfo (2.common.BuildInfo"v
CreateRoomRsp
result (2.common.Result 
clubRoom (2.club.ClubRoom
playCode (
	builtCode ("W
DestroyRoomReq 
request (2.common.Request
tableId (

createTime ("0
DestroyRoomRsp
result (2.common.Result"O
RoomListReq 
request (2.common.Request
clubId (
ruleId ("P
RoomListRsp
result (2.common.Result!
	clubRooms (2.club.ClubRoom"I
ClubMasterInfo
uid (
totalDiamond (
deltaDiamond ("{
AskDestroyRoomReq 
request (2.common.Request
uid (
tableId (

createTime (

fromGameId ("µ
AskDestroyRoomRsp 
request (2.common.Request
status (
uid (
clubId (
tableId (

createTime (,
clubMasterInfo (2.club.ClubMasterInfo"8
NotifyDestroyRoomReq 
request (2.common.Request"h
NotifyDestroyRoomRsp
result (2.common.Result
uid (
tableId (

createTime ("‘
NotifyRoomStatusRsp
result (2.common.Result
clubId (
tableId (

createTime (
state (
curRound (

totalRound (%
clubPlayers (2.club.ClubPlayer
endTime	 (
leftTime
 (
validityPeriod (
gameId ("š
ChatMessage

id (
msgType (
	isPrivate (

createTime (
content (	
clubId (&

senderInfo (2.common.PlayerInfo"Z
ChatMessageReq 
request (2.common.Request&
chatMessage (2.club.ChatMessage"X
ChatMessageRsp
result (2.common.Result&
chatMessage (2.club.ChatMessage"¤
HistoryChatMessageListReq 
request (2.common.Request
clubId (
msgType (
offset (

offsetTime (
limit (
	direction ("d
HistoryChatMessageListRsp
result (2.common.Result'
chatMessages (2.club.ChatMessage"B
UnreadSysMessage
clubId (
msgType (
count ("5
SysMessageListReq 
request (2.common.Request"f
SysMessageListRsp
result (2.common.Result1
unreadSysMessages (2.club.UnreadSysMessage"†

SysMessage

id (
clubId (
msgType (

createTime (
recvTime (%
	applicant (2.common.PlayerInfo"
PeekSysMessageListReq 
request (2.common.Request
clubId (
offset (

offsetTime (
limit (
	direction ("^
PeekSysMessageListRsp
result (2.common.Result%
sysMessages (2.club.SysMessage"2
ApplyNoticeReq 
request (2.common.Request"@
ApplyNoticeRsp
result (2.common.Result
clubId ("_
ApplyMessageReq 
request (2.common.Request
clubId (
pos (
count ("Ë
ApplyMessage
applicantUid (
applicantNick (	
applicantHeadUrl (	
	applyTime (	

checkerUid (
checkerNick (	
checkerHeadUrl (	
check (
	checkTime	 (	"ˆ
ApplyMessageRsp
result (2.common.Result)
applyMessages (2.club.ApplyMessage
clubId (
pos (
count ("
PlayRecordReq 
request (2.common.Request
pos (
count (
	startTime (
endTime (
clubId (
type ("D
RecordPlayer$
userInfo (2.common.PlayerInfo
points ("Á

PlayRecord
gameType (

totalRound (
tableId (
masterId (
time ()
recordPlayers (2.club.RecordPlayer
payWay (2.common.PayWay
	buildJson (	"¯
PlayRecordRsp
result (2.common.Result%
playRecords (2.club.PlayRecord
clubId (
type (
	playTimes (
payment (
playFullTimes ("x
PlayRecordDetailReq 
request (2.common.Request
gameType (
time (
clubId (
tableId ("n
PointsDetail
uid (
nick (	
points (
totalPoints (
infos (	
headUrl (	"l
RoundPoints
round ()
PointsDetails (2.club.PointsDetail

playbackId (	
endTime (	"
PlayRecordDetailRsp
result (2.common.Result
gameType (
time (&
roundPoints (2.club.RoundPoints
clubId ("7
PushRsp
result (2.common.Result
json (	"a
PlayInfoReq 
request (2.common.Request
	startTime (
count (
clubId (":
PlayInfo
rounds (
date (	
diamonds ("‚
PlayInfoRsp
result (2.common.Result!
	playInfos (2.club.PlayInfo
clubId (
	startTime (
count ("W
PlayInfoDetailReq 
request (2.common.Request
dateTime (
clubId ("[
PlayInfoDetail
playerCount (

totalRound (
rounds (
gameType ("„
PlayInfoDetailRsp
result (2.common.Result-
playInfoDetails (2.club.PlayInfoDetail
clubId (
dateTime ("€
PlayWinnerInfoReq 
request (2.common.Request
dateTime (
pos (
count (
clubId (
uid ("X
PlayWinnerInfo$

clubPlayer (2.club.ClubPlayer
winTimes (
rounds ("­
PlayWinnerInfoRsp
result (2.common.Result-
playWinnerInfos (2.club.PlayWinnerInfo
clubId (
dateTime (
pos (
count (
uid ("
PlayRankInfoReq 
request (2.common.Request
rankType (
rankDate (
pos (
count (
clubId (
uid ("V
PlayRankInfo$

clubPlayer (2.club.ClubPlayer
position (
points ("¹
PlayRankInfoRsp
result (2.common.Result)
playRankInfos (2.club.PlayRankInfo
rankType (
rankDate (
pos (
count (
clubId (
uid (