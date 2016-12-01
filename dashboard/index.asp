<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <style>
    body {
      /*background: url('dashBackground.png');*/
      background-color:black;
    }
    .btn{
      background-color:#cc6600;
      color:white;
    }
    </style>
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

      <!-- <p><%response.write(date())%></p> -->

      <!-- user_nickname을 받아오는 작업 필요 -->
      <h1><%Request.form("user_nickname")%>의 일기장</h1>

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
      <!-- <div class="btn-group" role="group" aria-label="..."> -->
        <button type="button" class="btn btn-default">수정</button>
        <button type="button" class="btn btn-default">삭제</button>
        <button type="button" class="btn btn-default">새 일기장</button>
      <!-- </div> -->
  </body>
</html>
