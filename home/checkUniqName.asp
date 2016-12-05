<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 1. 유저의 이름값을 받아서 조회.
' 2. 값이 있다면 back하며 경고.
' 3. 값이 없으면 back


'1 입력한 유저폼의 값을 읽어와서 저장
Dim nickname
'nickname = Request("user_nickname")

Dim strConn, strSQL, objRs
strConn = connectionString
strSQL = "select * from USERS where user_nickname = '" & nickname & "'"

Set objRs = Server.CreateObject("ADODB.Recordset")
objRs.Open strSQL, strConn

'2 입력한 닉네임이 DB에 있다면
If NOT objRs.EOF Then
 %>
 	<script>
		alert("중복되는 닉네임이 있습니다. 다른 닉네임을 입력해주세요.");
		history.back();
	</script>
	<%
Else
'3 입력한 닉네임이 DB에 없다면
%>
	<script>
	  alert("사용 가능한 닉네임입니다.");
	  history.back();
	</script>
<%
End if

objRs.Close
Set objRs = Nothing

%>
