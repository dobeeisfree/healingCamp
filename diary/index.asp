<!-- TODO 최근 일기글이 보인다 -->
<%
' 1. 해당 다이어리 인덱스를 받아 해당 일기 테이블 조회 (order by 일기 생성순)
' 2. 조회한 일기 테이블의 튜플들에서 마지막 것만 렌더링
%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_diary/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <div id="left_content">
      <p>제목: <%Request.form("제목")%></p>
      <!-- 일기 작성자가 일기 쓴 날짜를 저장해 놓고 받아와서 띄워주기 -->
      <p>날짜: <%response.write(date())%></p>

      <div class="btn-group" role="group" aria-label="...">
        <button type="button" class="bt btn-default"><</button>
        <button type="button" class="bt btn-default">></button>
      </div>
    </div>

    <div id="right_content">
      <p>내용: <%Request.form("내용")%></p>
      <p>FROM.<%Request.form("user_name")%></p>

      <button type="button" class="btn btn-default">일기 이어쓰기</button>
    </div>
  </body>
</html>
