<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/isUserLogin.asp" -->
<%
Dim d_index, p_index, d_passwd
Dim objRs, strDiarySQL, strConn

' auth.asp 로부터 값을 받음
d_index = Request("d_index")
p_index = Request("p_index")
d_passwd = Request("d_passwd")

' 레코드셋 열어서, 비번으로 다이어리 조회
Set objRs = Server.CreateObject("ADODB.Recordset")
strConn = connectionString
strDiarySQL = "select * from diaries where diary_passwd = '" & d_passwd & "';"
objRs.Open strDiarySQL, strConn

' 조회 확인
If Not objRs.EOF Then
	If d_passwd = objRs("diary_passwd") Then
		Response.Redirect "/diary/index.asp?d_index="&d_index&"&p_index="&p_index&""
	Else%>
		<script>
			alert("무언가 잘못되었습니다 ~~");
			history.back();
		</script>
<%	End If
'4.
Else
%>
<script>
	alert("다이어리가 없는데 ~~");
	history.back();
</script>
<%
End If

objRs.Close
Set objRs = Nothing
%>
