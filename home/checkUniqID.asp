<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 1. 유저의 아이디값을 받아서 조회.
' 2. 값이 있다면 back하며 경고.
' 3. 값이 없으면 back


'1 입력한 유저폼의 값을 읽어와서 저장
Dim id
id = Request("register_id")
Response.Write id

Dim strConn, strSQL, objRs
strConn = connectionString
strSQL = "select * from USERS where user_id = '" & id & "'"

Set objRs = Server.CreateObject("ADODB.Recordset")
objRs.Open strSQL, strConn

'2 입력한 ID가 DB에 있다면
If NOT objRs.EOF Then
	%>
	<script>
		alert("이미 존재하는 아이디 입니다. 다른 아이디를 입력해주세요.");
	  history.back();
	</script>
	<%
Else
'3 입력한 ID가 DB에 없다면
%>
<script>
	alert("사용 가능한 아이디입니다.");
  history.back();
</script>
<%
End if

objRs.Close
Set objRs = Nothing

%>
