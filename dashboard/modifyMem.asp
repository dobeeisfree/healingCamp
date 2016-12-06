<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 변수 준비
Dim d_index
' 쓰는 순서와, 유저 인덱스
Dim order_mem(6), mem_index(6)
Dim strConn, strUpdateSQL, objDBConn

' 다이어리 인덱스
d_index = Request("d_index")
' 멤버 순서
order_mem(0) = Request("order_mem_1")
order_mem(1) = Request("order_mem_2")
order_mem(2) = Request("order_mem_3")
order_mem(3) = Request("order_mem_4")
order_mem(4) = Request("order_mem_5")
order_mem(5) = Request("order_mem_6")
' 유저 인덱스
mem_index(0) = Request("mem_1")
mem_index(1) = Request("mem_2")
mem_index(2) = Request("mem_3")
mem_index(3) = Request("mem_4")
mem_index(4) = Request("mem_5")
mem_index(5) = Request("mem_6")
'
'For i=0 to 5 step 1
'  If mem_index(i) = "" Then
'  Else
'  strUpdateSQL = "update collaboraters set user_index = " & mem_index(i) & ","
'  End If
'Next
'
'//이거를 만족하는 user_index
'"update collaboraters set user_index = "+입력된 user_index+", diary_index = "+입력된 diary index +", write_order = "+입력된 write_order +
'"where user_index = "+입력된 user_index "and diary index = "+ 현재 수정한 diary_index+";


'For i=0 to 5 step 1
'Response.Write order_mem(i) & "<br>"
'Next

'
'strConn = connectionString
'strUpdateSQL = "update diaries set diary_name ='"& diaryName &"', diary_passwd ='"& diaryPwd &"' where diary_index = '" & d_index & "';"
'
'Set objDBConn = Server.CreateObject("ADODB.connection")
'objDBConn.Open strConn
'objDBConn.Execute strUpdateSQL
'
'objDBConn.Close
'Set objDBConn = Nothing
'
'Response.Redirect "/dashboard/index.asp"
%>
