<%
' 세션을 종료후 리다이렉트
Session.abandon
Session.Contents.RemoveAll()
Response.Redirect("/default.asp")
%>
