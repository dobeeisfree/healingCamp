<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->

<!DOCTYPE html>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_dashboard/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

      <!-- user_nickname을 받아오는 작업 필요 -->
      <h1><%=Request.form("login_id")%>의 일기장</h1>

      <div class="panel panel-default">
        <!-- 일기장 이름 -->
        <div class="panel-heading"><h3 class="panel-title">일기장 이름<%Request.form("diary_name")%></h3></div>
          <div class="panel-body">
            일기 멤버
          </div>
        </div>

        <div class="panel panel-default">
          <!-- 일기장 이름 -->
          <div class="panel-heading"><h3 class="panel-title">일기장 이름<%Request.form("diary_name")%></h3></div>
          <div class="panel-body">
            일기 멤버
          </div>
      </div>

      <!-- <div class="btn-group" role="group" aria-label="..."> -->
        <button type="button" class="btn btn-default">수정</button>
        <button type="button" class="btn btn-default">삭제</button>
        <button type="button" class="btn btn-default">새 일기장</button>
      <!-- </div> -->
  </body>
</html>

<%
' 1. 해당 유저가 참여한 일기방을 조회해서 가져온다.
' 2. 목록별로 반복해서 DOM 형성

' TODO 각 일기방 목록에는 수정과 삭제 버튼이 있다
%>

<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->
