<!-- TODO 자신의 순서가 왔을 경우, 일기를 작성할 수 있다 -->
<%
' 1. 일기 값들을 dairy/newProc.asp 로 전송
%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_diary/new.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

    <form method=post action=dairies\index.asp>
      <div id="content">
        <p id="left_content">제목: <input type=text name="제목"></p>
        <p class="right_content">내용: </p>
        <p class="right_content"><textarea cols="30" rows="12"></textarea></p>
        <p id="btn"> <input type=submit value="작성완료"></p>
      </div>
    </form>
  </body>
</html>
