<!DOCTYPE html>
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/isUserLogin.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 사용자의 일기방 목록 조회
Dim strDashboardSQL, strConn, objRs

Set objRs = Server.CreateObject("ADODB.Recordset")
strConn = connectionString
strDashboardSQL = "select * from diaries where diary_index IN (select c.diary_index from collaboraters c where c.user_index = '" & Session("index") &"');"
objRs.Open strDashboardSQL, strConn

%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_dashboard/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <div class="content">
      <h1><%=Session("nickname")%>의 일기장</h1>
      <%
        If NOT objRs.EOF Then
          Do Until objRs.EOF
      %>
    <div class="panel panel-default">
      <div class="panel-heading"><h3 class="panel-title"><%=objRs("diary_name")%></h3></div>
      <div class="panel-body">
      <%
      ' 변수 준비
      Dim strMemberSQL, objRs_2
      Set objRs_2 = Server.CreateObject("ADODB.Recordset")
      strMemberSQL = "select u.user_nickname from collaboraters c, users u where c.diary_index =" & objRs("diary_index") & "and c.user_index = u.user_index;"
      objRs_2.Open strMemberSQL, strConn

      ' 각 다이어리의 멤버 닉네임 조회
      If NOT objRs_2.EOF Then
        Do Until objRs_2.EOF
        %>
        <b><%=objRs_2("user_nickname")%>♥</b>
        <%
          objRs_2.MoveNext
        Loop
      End if

      ' 닫아주고
      objRs_2.Close
      Set objRs_2 = Nothing
      %>
      </div>
      <form name="diaryForm" action="/diary/index.asp" method="post">
        <input type="hidden" name="d_index" value="<%=objRs("diary_index")%>">
        <input type="hidden" name="p_index" value="디폴트">
        <button type="submit" class="btn btn-default">펼쳐보기</button>
      </form>
      <form name="diaryUpdateForm" action="/dashboard/modify.asp" method="post">
        <input type="hidden" name="d_index" value="<%=objRs("diary_index")%>">
        <button type="submit" class="btn btn-default">수정</button>
      </form>
      <form name="diaryDeleteForm" action="/dashboard/destroy.asp" method="post">
        <input type="hidden" name="d_index" value="<%=objRs("diary_index")%>">
        <button type="submit" class="btn btn-default">삭제</button>
      </form>
    </div>
    <%
        objRs.MoveNext
      Loop
      End If
    %>
    <a class="btn btn-default" href="new.asp" role="button">새 일기장</a>
    </div>
  </body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
