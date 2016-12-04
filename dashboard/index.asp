<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
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

      <!-- <p><%response.write(date())%></p> -->

      <!-- user_nickname을 받아오는 작업 필요 -->
      <h1><%=Session("nickname")%>의 일기장</h1>

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
        <a class="btn btn-default" href="new.asp" role="button">새 일기장</a>
      <!-- </div> -->
  </body>
</html>

<%
' 1. 해당 유저가 참여한 일기방을 조회해서 가져온다.
' 2. 목록별로 반복해서 DOM 형성

' TODO 각 일기방 목록에는 수정과 삭제 버튼이 있다
%>

<!-- TODO 자신이 참여한 일기방 목록을 보여준다 -->
