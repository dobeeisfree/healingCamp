<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
'1 입력한 유저폼의 값을 읽어와서 저장
Dim diaryName, diaryPwd, diaryCreator
Dim order_register_mem_1, order_register_mem_2, order_register_mem_3, order_register_mem_4, order_register_mem_5, order_register_mem_6
Dim register_mem_1,register_mem_2,register_mem_3, register_mem_4,register_mem_5,register_mem_6

' 다이어리방 정보
diaryName = Request("diaryName")
diaryPwd = Request("diaryPwd")
diaryCreator = Request("diaryCreator")
' 멤버 순서 정보
order_register_mem_1 = Request("order_register_mem_1")
order_register_mem_2 = Request("order_register_mem_2")
order_register_mem_3 = Request("order_register_mem_3")
order_register_mem_4 = Request("order_register_mem_4")
order_register_mem_5 = Request("order_register_mem_5")
order_register_mem_6 = Request("order_register_mem_6")
' 멤버 닉네임
register_mem_1 = Request("register_mem_1")
register_mem_2 = Request("register_mem_2")
register_mem_3 = Request("register_mem_3")
register_mem_4 = Request("register_mem_4")
register_mem_5 = Request("register_mem_5")
register_mem_6 = Request("register_mem_6")


'2
Dim DBcon
Set DBcon = Server.CreateObject("ADODB.Connection")
DBcon.Open(connectionString)


'3
Dim strDiarySQL, strConn, strDiaryTopSQL, topindex
Dim strUserSQL_1,strUserSQL_2,strUserSQL_3,strUserSQL_4,strUserSQL_5,strUserSQL_6
Dim strColSQL_1,strColSQL_2,strColSQL_3,strColSQL_4,strColSQL_5,strColSQL_6


' 먼저 일기장 만들고
strDiarySQL = "INSERT INTO DIARIES " & _
		 "VALUES ('" & diaryName & "', '" & _
					   diaryPwd & "', '" & _
					   diaryCreator & "')"

DBcon.execute(strDiarySQL), affected


' user_index 조회
Set objRs = Server.CreateObject("ADODB.Recordset")
Set objRs_1 = Server.CreateObject("ADODB.Recordset")
Set objRs_2 = Server.CreateObject("ADODB.Recordset")
Set objRs_3 = Server.CreateObject("ADODB.Recordset")
Set objRs_4 = Server.CreateObject("ADODB.Recordset")
Set objRs_5 = Server.CreateObject("ADODB.Recordset")
Set objRs_6 = Server.CreateObject("ADODB.Recordset")

strUserSQL_1 = "select user_index from users where user_nickname = '"+ register_mem_1 +"';"
strUserSQL_2 = "select user_index from users where user_nickname = '"+ register_mem_2 +"';"
strUserSQL_3 = "select user_index from users where user_nickname = '"+ register_mem_3 +"';"
strUserSQL_4 = "select user_index from users where user_nickname = '"+ register_mem_4 +"';"
strUserSQL_5 = "select user_index from users where user_nickname = '"+ register_mem_5 +"';"
strUserSQL_6 = "select user_index from users where user_nickname = '"+ register_mem_6 +"';"
strDiaryTopSQL = "select TOP(1) diary_index from diaries order by diary_index desc;"
strConn = connectionString


'저장한 user_index를 다시 collaborater테이블에 insert 요청
objRs.Open strDiaryTopSQL, strConn
topindex = objRs("diary_index")
objRs.Close
Set objRs = Nothing

objRs_1.Open strUserSQL_1, strConn
strColSQL_1 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_1("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_1 & "')"
objRs_1.Close
Set objRs_1 = Nothing

objRs_2.Open strUserSQL_2, strConn
strColSQL_2 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_2("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_2 & "')"
objRs_2.Close
Set objRs_2 = Nothing

objRs_3.Open strUserSQL_3, strConn
strColSQL_3 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_3("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_3 & "')"
objRs_3.Close
Set objRs_3 = Nothing

objRs_4.Open strUserSQL_4, strConn
strColSQL_4 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_4("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_4 & "')"
objRs_4.Close
Set objRs_4 = Nothing

objRs_5.Open strUserSQL_5, strConn
strColSQL_5 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_5("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_5 & "')"
objRs_5.Close
Set objRs_5 = Nothing

objRs_6.Open strUserSQL_6, strConn
strColSQL_6 = "INSERT INTO COLLABORATERS " & _
		 "VALUES ('" & objRs_6("user_index") & "', '" & _
					   topindex & "', '" & _
					   order_register_mem_6 & "')"
objRs_6.Close
Set objRs_6 = Nothing

'4 sql 돌리고 close
DBcon.execute(strColSQL_1), affected
DBcon.execute(strColSQL_2), affected
DBcon.execute(strColSQL_3), affected
DBcon.execute(strColSQL_4), affected
DBcon.execute(strColSQL_5), affected
DBcon.execute(strColSQL_6), affected
DBcon.Close
Set DBcon = Nothing

'5
If affected<>0Then
	Response.Redirect "/dashboard/index.asp"
Else
	Response.Write "<script>alert('오류!!');history.back;</script>"
End If
%>
