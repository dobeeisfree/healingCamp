<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 일기 값들을 dairy/newProc.asp 로 전송
d_index = Request("d_index")
'Response.Write "index = '" & d_index
%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_diary/new.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <form method="post" action="newProc.asp">
      <div id="content">
        <input type="hidden" name="d_index" value="<%=d_index%>">
        <input type="hidden" name="u_index" value="<%=Session("index")%>">
        <p id="left_content">제목: <input type=text name="paperTitle"></p>
        <p class="right_content">내용: </p>
        <p class="right_content"><textarea cols="37" rows="12" name="paperContent"></textarea></p>
        <p id="btn"> <button type="submit" class="btn btn-default">작성완료</button></p>
      </div>
    </form>
  </body>
</html>
