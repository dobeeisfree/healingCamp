<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <%
    id = Request("login_id")
    %>

  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->

      <!-- <p><%response.write(date())%></p> -->

      <!-- user_nickname을 받아오는 작업 필요 -->
      <h1><%=id%>의 일기장</h1>

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

      <script src="js/bootstrap.min.js"></script>
      <div class="btn-group" role="group" aria-label="...">
        <button type="button" class="btn btn-default">수정</button>
        <button type="button" class="btn btn-default">삭제</button>
        <button type="button" class="btn btn-default">새 일기장</button>
      </div>
  </body>
</html>
