<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 유저네임과 유저비밀번호를 조회
' 조회한 값에 없으면, 다시 login.asp로 가며 경고
' 조회한 값이 존재하면, dashboard/index.asp 로 간다.

'1 입력한 유저폼의 값을 읽어와서 저장
Dim id,passwd

id = Request("user_id")
passwd = Request("user_pwd")

'2 디비 조회
Dim strConn, strSQL, objRs
strConn = connectionString
strSQL = "select * from USERS where user_id = '" & id & "' and user_password = '" & passwd & "'"

Set objRs = Server.CreateObject("ADODB.Recordset")
objRs.Open strSQL, strConn


'3 조회 확인
If Not objRs.EOF Then
	If passwd = objRs("user_password") Then
		Session("id") = id
		Session("name") = objRs("user_name")
		Session("nickname") = objRs("user_nickname")
		Response.Redirect "/dashboard/index.asp"
	Else%>
		<script>
			alert("오류입니다~~");
			history.back();
		</script>
<%	End If
'4.
Else
%>
<script>
	alert("없네요~~");
	history.back();
</script>
<%
End If

objRs.Close
Set objRs = Nothing
%>
