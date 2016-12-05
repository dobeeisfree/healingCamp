<%
' 익명 사용자 방문을 막는다.

If Session("nickname") = "" Then
  If fileName <> "/home/login.asp" Then
  Response.Write "<script>alert('로그인하세요'); "
  Response.Write "location.href='/default.asp';"
  Response.Write "</script>"
  Response.End
  End If
Else
  If fileName = "/home/login.asp" Then
  response.redirect "/dashboard/index.asp"
  End If
End If
%>
