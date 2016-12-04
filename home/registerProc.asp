<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 1. 입력한 유저폼의 값을 읽어와서 저장
' 2. 저장한 후 dashboard/index.asp로 이동


'1 입력한 유저폼의 값을 읽어와서 저장
Dim name,id,passwd,nickname

name = Request("register_name")
id = Request("register_id")
passwd = Request("register_pwd")
nickname = Request("register_nickname")

'2
Set DBcon = Server.CreateObject("ADODB.Connection")
DBCon.Open(connectionString)

'3
strSQL = "INSERT INTO USERS " & _
		 "VALUES ('" & id & "', '" & _
					   nickname & "', '" & _
					   passwd & "', '" & _
					   name & "')"

'4 sql 돌리고 close
DBCon.execute(strSQL), affected
DBCon.Close
Set DBCon = Nothing

'5
If affected<>0Then
	Session("nickname") = nickname
	Session("name") = name
	Response.Redirect "/home/login.asp"
Else
	Response.Write "<script>alert('오류!!');history.back;</script>"
End If
%>
