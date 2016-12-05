<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 변수 준비
Dim diaryName, diaryPwd, d_index
Dim strConn, strUpdateSQL, objDBConn

d_index = Request("d_index")
diaryName = Request("diaryName")
diaryPwd = Request("diaryPwd")

strConn = connectionString
strUpdateSQL = "update diaries set diary_name ='"& diaryName &"', diary_passwd ='"& diaryPwd &"' where diary_index = '" & d_index & "';"

Set objDBConn = Server.CreateObject("ADODB.connection")
objDBConn.Open strConn
objDBConn.Execute strUpdateSQL

objDBConn.Close
Set objDBConn = Nothing

Response.Redirect "/dashboard/index.asp"
%>
