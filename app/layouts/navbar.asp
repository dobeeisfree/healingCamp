<!-- 기본 네비바 -->
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
    <% End IF %>
    <li class="nav-item">
      <a class="nav-link" href="#">일기장</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">알림</a>
    </li>
    <% If Session("nickname") = "" Then %>
    <% Else %>
    <li class="nav-item">
      <a class="nav-link" href="/app/utils/logout.asp">로그아웃</a>
    </li>
    <% End IF %>
  </ul>
</nav>
