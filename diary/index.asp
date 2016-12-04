<!-- TODO 최근 일기글이 보인다 -->
<%
' 1. 해당 다이어리 인덱스를 받아 해당 일기 테이블 조회 (order by 일기 생성순)
' 2. 조회한 일기 테이블의 튜플들에서 마지막 것만 렌더링
%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

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
