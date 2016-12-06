<%

' 변수 준비
Dim strWOrder, strDSQ
Dim objRsWO, objDir, u_index
Dim rsCount, arrDiaryName, i

u_index = Session("index")

If u_index = "" Then
Else
  ' 유저가 있을 때
  strConn = connectionString


  ' 먼저 user가 참여한 diary_index와 교환순서를 받아온다
  Set objRsWO = Server.CreateObject("ADODB.Recordset")
  strWOrder = "select diary_index, writer_order from collaboraters where user_index = '"& u_index &"';"
  objRsWO.Open strWOrder, strConn


  rsCount =  objRsWO.RecordCount
  Redim arrDiaryName(rsCount)
  i = 0

  ' diary의 교환순서와 user의 교환순서를 비교한다.
  ' 다이어리가 있다면
  ' 이름 출력
  If NOT objRsWO.EOF Then
    Do Until objRsWO.EOF

    'Response.Write objRsWO("diary_index") &"<br>"
    'Response.Write "<br> wr.."&objRsWO("writer_order") &"<br>"

    Set objRsWO = Server.CreateObject("ADODB.Recordset")
    strDSQL = "select d.diary_name " &_
              "from diaries d, write_order o" &_
              " where o.diary_index = " & objRsWO("diary_index") &_
              " and o.current_num = " & objRsWO("writer_order") &_
              " and d.diary_index = o.diary_index;"
    objDir.Open strDSQL, strConn

    If objDir.EOF Then
    Else
      arrDiaryName(i) = objDir("diary_name")
    End If

    i = i + 1
    objRsWO.MoveNext

    Loop
  End IF
  ' arrDiaryName 배열

  For i=0 to rsCount step 1
    Response.Write arrDiaryName(i)
  Next

End If

%>
<style>
  a{
    color:#cc6600;
  }
</style>
<nav class="navbar navbar-light" style="background-color: black;">
  <ul class="nav navbar-nav">
    <li class="nav-item active">
      <a class="navbar-brand" href="/">healingCamp</a>
    </li>
    <% If Session("nickname") = "" Then %>
    <% Else %>
    <li class="nav-item">
      <a class="nav-link"><%=Session("nickname")%>님!</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="http://localhost/dashboard/index.asp">일기장</a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">알림 <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another action</a></li>
      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/app/utils/logout.asp">로그아웃</a>
    </li>
    <% End IF %>
  </ul>
</nav>
<%
If u_index = "" Then
Else
  objRsWO.Close
  objDir.Colse
  Set objRsWO = Nothing
  Set objRsDir = Nothing
End If
%>
