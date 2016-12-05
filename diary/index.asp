<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/isUserLogin.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 변수 준비
Dim strDiarySQL, strConn, strCountSQL
Dim objRs, objRs_Last
Dim d_index, p_index, max_index

d_index = Request("d_index")
p_index = Request("p_index")


' 레코드셋 열어서
Set objRs = Server.CreateObject("ADODB.Recordset")
strConn = connectionString
strDiarySQL = "select * from papers where diary_index = '" & d_index & "' order by created_date desc;"
objRs.Open strDiarySQL, strConn


' 현재 모델을 카운트 해놓은 상태에서
Set objRs_Last = Server.CreateObject("ADODB.Recordset")
strCountSQL = "select COUNT(PAPERS.PAPER_INDEX) paper_count from papers;"
objRs_Last.Open strCountSQL, strConn
max_index = objRs_Last("paper_count")


' 카운트 했으니 종료하고
objRs_Last.Close
Set objRs_Last = Nothing


' 페이징의 디폴트을 확인한다. 최신 일기를 위하여
' 디폴트 값은 dashboard/index.asp에서 펼쳐보기를 클릭했을 경우
' 가져와진다.
If p_index = "디폴트" Then
  p_index = max_index
End If
%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="../app/assets/stylesheets/_diary/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <%
    If NOT objRs.EOF Then
    	Do Until objRs.EOF
        If CStr(objRs("PAPER_INDEX")) = CStr(p_index) Then
    %>
    <div id="left_content">
      <p>제목: <%=objRs("TITLE")%></p>
      <p>날짜: <%=objRs("CREATED_DATE")%></p>
      <div id="btn_page" class="btn-group" role="group" aria-label="...">
        <% If CStr(p_index) = CStr(1) Then %>
        <% Else %>
        <form name="diaryPaging_prev" action="/diary/index.asp" method="post">
          <input type="hidden" name="d_index" value="<%=d_index%>">
          <input type="hidden" name="p_index" value="<%=objRs("PAPER_INDEX") - 1%>">
          <button type="submit" class="btn btn-primary">왼쪽</button>
        </form>
        <% End If %>
        <% If CStr(p_index) = CStr(max_index) Then %>
        <% Else %>
        <form name="diaryPaging_next" action="/diary/index.asp" method="post">
          <input type="hidden" name="d_index" value="<%=d_index%>">
          <input type="hidden" name="p_index" value="<%=objRs("PAPER_INDEX") + 1%>">
          <button type="submit" class="btn btn-default">오른쪽</button>
        </form>
        <% End If %>
      </div>
    </div>
    <div id="right_content">
      <p>내용: <%=objRs("CONTENT")%></p>
      <%
      ' 변수 준비
      Dim strMemberSQL, objRs_paper
      Set objRs_paper = Server.CreateObject("ADODB.Recordset")

      ' 누가 썼는지 닉네임을 가져온다.
      strMemberSQL = "select u.user_nickname from papers p, users u where p.creater_index = u.user_index and p.paper_index='"&objRs("PAPER_INDEX")&"';"
      objRs_paper.Open strMemberSQL, strConn
      %>
      <p>FROM.<%=objRs_paper("user_nickname")%></p>
      <%
      ' 닫아주고
      objRs_paper.Close
      Set objRs_paper = Nothing
      %>
    </div>
    <%
        End If
        objRs.MoveNext
      Loop
    End If
    %>
    <form name="diaryNewForm" action="/diary/new.asp" method="post">
      <div id="btn_write">
        <input type="hidden" name="d_index" value="<%=d_index%>">
        <button type="submit" class="btn btn-default">이어쓰기</button>
      </div>
    </form>
  </body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
