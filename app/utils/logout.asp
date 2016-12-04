<%
' 세션을 종료후 리다이렉트
Session.abandon
Response.Redirect("/home/login.asp")
%>
