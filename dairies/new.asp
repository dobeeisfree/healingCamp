<!-- TODO 자신의 순서가 왔을 경우, 일기를 작성할 수 있다 -->
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->

    <form method=post action=dairies\index.asp>
      <p>제목: <input type=text name="제목"></p>
      <p>내용: <input type=text name="내용"></p>
      <input type=submit value="작성완료">
    </form>
  </body>
</html>
