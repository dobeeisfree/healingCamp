<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!DOCTYPE html>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
    <link href="../app/assets/stylesheets/_home/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../app/assets/javascripts/home/loginCheck.js"></script>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
  </head>
<body>
    <form name="loginForm" action="loginProc.asp" method="post" onsubmit="check();">
      <div class="form-group loginform">
        <table border=0 cellpadding="2" cellspacing="0" bordercolordark="eeeeee" bordercolorlight="#464646">
          <div class="text">
            <h1>안녕 교환일기장 </h1>
            <br><br>
            <p class="description">
              아이디, 닉네임, 패스워드만으로 간단한 회원가입을 하고 교환일기를 써보세요!<br>
              교환일기를 쓸 방을 생성한 후에 자신의 교환순서에 맞게 알림이 울리면 <br>
              방 멤버들과 돌아가면서 교환일기를 쓸 수 있습니다. <br>
              아날로그 감성을 살린 소통 플랫폼입니다! <br>
            </p>
            <div class="button_c form-group">
              <label for="ID">ID</label>
              <input type="text"  name="user_id" class="form-control login" id="ID" placeholder="아이디를 입력해주세요">
            </div>
            <div class="button_c form-group">
              <label for="PASSWORD">PASSWORD</label>
              <input type="password" class="form-control login" id="PASSWORD" name="user_pwd"></p>
            </div>
            <button type="submit" class="btn btn-default">로그인</button>
            <a class="btn btn-default" href="register.asp" role="button">회원가입</a>
          </div>
        </table>
      </div>
      <br><br><br>
    </form>
    <br><br><br>
  </body>
</html>
