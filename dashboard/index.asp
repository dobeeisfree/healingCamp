<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
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
    <!-- TODO 아래 style 태그 따로 css로 분리하기 -->
    <style>
    body {
      background-image: url('/app/assets/images/dashdash.jpg');
      /*background-color:black;*/
    }
    .btn{
      background-color:#cc6600;
      color:white;
    }
    </style>
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
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
        <a href="/diary/index.asp" role="button" class="btn btn-default" name="<%=objRs("diary_index")%>">펼쳐보기</a>
        <a href="" role="button" class="btn btn-default" name="<%=objRs("diary_index")%>">수정</a>
        <a href="" role="button" class="btn btn-default" name="<%=objRs("diary_index")%>">삭제</a>
      </div>
      <%
          objRs.MoveNext
        Loop
        End If
      %>
      <a class="btn btn-default" href="new.asp" role="button">새 일기장</a>
  </body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
