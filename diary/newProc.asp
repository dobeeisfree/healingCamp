<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 일기 생성하는데 필요한 값을 가져와서
' 디비로 인서트!

' 변수 준비
Dim paperTitle, paperContent
Dim u_index, d_index

paperTitle = Request("paperTitle")
Response.Write paperTitle
paperContent = Request("paperContent")
Response.Write paperContent
u_index = Request("u_index")
Response.Write u_index
d_index = Request("d_index")
Response.Write d_index

' 디비 오픈
Dim DBcon
Set DBcon = Server.CreateObject("ADODB.Connection")
DBcon.Open(connectionString)

'
strSQL = "INSERT INTO PAPERS (CREATER_INDEX, content, title, diary_index)" & _
		 "VALUES ('" & u_index & "', '" & _
					   paperContent & "', '" & _
					   paperTitle & "', '" & _
					  d_index & "')"

' sql 돌리고 close
DBcon.execute(strSQL), affected
DBcon.Close
Set DBcon = Nothing

'
If affected<>0Then
	Response.Redirect "/dashboard/index.asp"
Else
	Response.Write "<script>alert('오류!!');history.back;</script>"
End If
%>
