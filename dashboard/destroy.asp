<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 다이어리 인덱스를 받아 삭제한 후
' 대쉬보드로 리다이렉션
Dim d_index
Dim strDelSQL, objDBConn, strConn

d_index = Request("d_index")
strDelSQL = "delete from diaries where diary_index = '" & d_index & "';"
strConn = connectionString

Set objDBConn = Server.CreateObject("ADODB.Connection")
objDBConn.Open strConn

objDBConn.execute strDelSQL
objDBConn.Close
Set objDBConn = Nothing

Response.Redirect "/default.asp"
%>
<!-- <script>
  history.back();
</script> -->
