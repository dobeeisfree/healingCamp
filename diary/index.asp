<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/isUserLogin.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 변수 준비
Dim strDiarySQL, strConn, strTopSQL, strCountSQL, strDirInfo
Dim objRs, objRs_Last, objRs_COUNT, objRs_DirInfo
Dim d_index, p_index, max_index, min_index
Dim isYourTurn


d_index = Request("d_index")
p_index = Request("p_index")


' 레코드셋 열어서
Set objRs = Server.CreateObject("ADODB.Recordset")
strConn = connectionString
strDiarySQL = "select * from papers where diary_index = '" & d_index & "' order by created_date desc;"
objRs.Open strDiarySQL, strConn


' 현재 모델의 마지막번째 필드의 paper_index 조회
Set objRs_Last = Server.CreateObject("ADODB.Recordset")
strTopSQL = "select  TOP 1 * from papers where diary_index = '"& d_index &"' order by created_date desc;"
objRs_Last.Open strTopSQL, strConn

If objRs_Last.EOF Then
  max_index = ""
Else
  max_index = objRs_Last("paper_index")
End If


' 현재 모델의 첫번째 필드의 paper_index 조회
Set objRs_COUNT = Server.CreateObject("ADODB.Recordset")
strCountSQL = "select  TOP 1 * from papers where diary_index = '"& d_index &"' order by created_date;"
objRs_COUNT.Open strCountSQL, strConn

If objRs_COUNT.EOF Then
  min_index = ""
Else
  min_index = objRs_COUNT("paper_index")
End IF



' 카운트 했으니 종료하고
objRs_Last.Close
objRs_COUNT.Close
Set objRs_Last = Nothing
Set objRs_COUNT = Nothing


' 페이징의 디폴트을 확인한다. 최신 일기를 위하여
' 디폴트 값은 dashboard/index.asp에서 펼쳐보기를 클릭했을 경우
' 가져와진다.
If p_index = "디폴트" Then
  p_index = max_index
End If


' 또한, 자기 차례인지 알기 위해 조회
strDirInfo = "select * from diaries where diary_index = "& d_index & ";"
Set objRs_DirInfo = Server.CreateObject("ADODB.Recordset")
isYourTurn = false
objRs_DirInfo.Open strDirInfo, strConn

For i=0 to rsCount step 1
  If arrDiaryName(i) = "" Then
  Else
    If CStr(arrDiaryName(i)) = objRs_DirInfo("diary_name") Then
      isYourTurn = true
      Else
      isYourTurn = false
    End If
  End If
Next

%>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="../app/assets/stylesheets/_diary/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <% If max_index = empty Or min_index = empty Then %>
    <div id="right_content">
      <h4>아직 일기가..!</h4>
      <h4>한번 작성해보는게 어떨까요?</h4>
    </div>
    <% End If %>
    <%
    If NOT objRs.EOF Then
    	Do Until objRs.EOF
        If CStr(objRs("PAPER_INDEX")) = CStr(p_index) Then
    %>
    <div id="left_content">
      <p>제목: <%=objRs("TITLE")%></p>
      <p>날짜: <%=objRs("CREATED_DATE")%></p>
      <div id="btn_page" class="btn-group" role="group" aria-label="...">
        <% If CStr(p_index) > CStr(min_index) Then %>
        <form name="diaryPaging_prev" action="/diary/index.asp" method="post">
          <input type="hidden" name="d_index" value="<%=d_index%>">
          <input type="hidden" name="p_index" value="<%=objRs("PAPER_INDEX") - 1%>">
          <button id="btn_before" type="submit" class="btn btn-primary">이전 일기</button>
        </form>
        <% Else %>
        <% End If %>
        <% If CStr(p_index) < CStr(max_index) Then %>
        <form name="diaryPaging_next" action="/diary/index.asp" method="post">
          <input type="hidden" name="d_index" value="<%=d_index%>">
          <input type="hidden" name="p_index" value="<%=objRs("PAPER_INDEX") + 1%>">
          <button type="submit" class="btn btn-default">다음 일기</button>
        </form>
        <% Else %>
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
    <% If  isYourTurn = true Then %>
    <form name="diaryNewForm" action="/diary/new.asp" method="post">
      <div id="btn_write">
        <input type="hidden" name="d_index" value="<%=d_index%>">
        <button id="btn_nextdiary" type="submit" class="btn btn-default">이어쓰기</button>
      </div>
    </form>
    <% End If %>
  </body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
