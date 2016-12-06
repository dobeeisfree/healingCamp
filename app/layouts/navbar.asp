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
      <a class="nav-link" href="/dashboard/index.asp">일기장</a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">알림 <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <%
        Dim d_name_cnt
        d_name_cnt = 0
        For i=0 to rsCount step 1
          'If isArray(arrDiaryName) Then
          'Else
            If arrDiaryName(i) = "" Then
            Else
            d_name_cnt = d_name_cnt + 1
          'End if
        %>
        <li><a class="nav-link"><%=CStr(arrDiaryName(i))%>, 쓸 시간이 왔어요!</a></li>
        <%
          End IF
        Next

        If d_name_cnt = 0 Then
        %>
        <li><a class="nav-link">아직 쓸 수 있는 일기가 없어요!</a></li>
        <%
        End If
        %>
      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/app/utils/logout.asp">로그아웃</a>
    </li>
    <% End IF %>
  </ul>
</nav>
