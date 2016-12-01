<!-- 회원가입 페이지 -->
<!-- TODO 회원가입 폼 -->
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->



</head>
<body>
  <link href="../app/assets/stylesheets/_home/register.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="../app/assets/javascripts/home/registerCheck.js"></script>

  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <form name="FORM2" action="http://localhost/home/login.asp" method="post" onsubmit="return check();">
    <div>
      <div class="text">
        <h1> 회원가입 </h1>
        <br>

          <tr>
            <td width="99">
              <p> 이름 : <input type="text" class = "register" name="register_name" placeholder="이름을 입력해주세요"></p> <br>
              <p> 아이디 : <input type="text" class = "register" name="register_id" placeholder="아이디를 입력해주세요"></p> <br>
              <p> 비밀번호 : <input type="password" class = "register" name="register_pwd" placeholder="비밀번호를 입력해주세요"></p>
              <p><font size = "1.7" color = orange> 비밀번호는 여섯자 이상으로 설정합니다. <br></font>
              <p> 닉네임 : <input type="text" class = "register" name="register_nickname" placeholder="닉네임을 입력해주세요"></p>
              <p><font size = "1.7" color = orange> 여러분은 닉네임을 가지고 활동합니다. <br></font>
            </td>
            <br>
          </tr>

          <tr>
            <td width="680" colspan="3" class="button_c form-group"><p>
              <input type="reset">
              <input type="submit" name="submit" value=" 가입하기 ">
            </td>
          </tr>
        </div>

    </form>
      </div>
    </div>
  </form>

</body>
</html>
