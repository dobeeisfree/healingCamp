<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/isUserLogin.asp" -->
<%
Dim d_index, p_index
Dim objRs, strDiarySQL, strConn

d_index = Request("d_index")
p_index = Request("p_index")

' 레코드셋 열어서 조회
Set objRs = Server.CreateObject("ADODB.Recordset")
strConn = connectionString
strDiarySQL = "select * from diaries where diary_index = '" & d_index & "';"
objRs.Open strDiarySQL, strConn

%>
<!DOCTYPE html>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_home/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../app/assets/javascripts/home/loginCheck.js"></script>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
  </head>
<body>
<form name="loginForm" action="authOk.asp" method="post" onsubmit="check();">
  <div class="form-group loginform">
    <table border=0 cellpadding="2" cellspacing="0" bordercolordark="eeeeee" bordercolorlight="#464646">
      <div class="text">
        <h1>일기장 입장</h1>
        <h3><i><%=objRs("diary_name")%></i></h3>
        <br><br>
        <p class="description">이 일기를 볼려면 비밀번호가 필요합니다.</p>
        <div class="button_c form-group">
          <label for="ID">4자리</label>
          <input type="hidden" name="d_index" value="<%=d_index%>">
          <input type="hidden" name="p_index" value="<%=p_index%>">
          <input type="password"  name="d_passwd" class="form-control login" placeholder="비밀번호를 입력해주세요">
        </div>
        <button type="submit" class="btn btn-default">입장할래요!</button>
      </table>
    </div>
  </form>
</body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
