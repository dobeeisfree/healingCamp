<!-- TODO 최근 일기글이 보인다 -->
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->

    <p>제목: <%Request.form("제목")%></p>
    <p>날짜: <%response.write(date())%></p>
    <div class="btn-group" role="group" aria-label="...">
      <button type="button" class="btn btn-default">왼쪽</button>
      <button type="button" class="btn btn-default">오른쪽</button>
    </div>
    <p>내용: <%Request.form("내용")%></p>
    <p>FROM.<%Request.form("user_name")%></p>
    <button type="button" class="btn btn-default">일기 이어쓰기</button>

  </body>
</html>
