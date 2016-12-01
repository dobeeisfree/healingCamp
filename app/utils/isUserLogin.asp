<%
' 익명 사용자 방문을 막는다.
If Session("user") "" Then
  Response.Write "<script>alet('로그인하세요'); "
  Response.Write "location.href='LoginForm.asp';</script>"
End If
%>
