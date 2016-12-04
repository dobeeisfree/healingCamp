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

  <form name="registerForm" action="registerProc.asp" method="post" onsubmit="check();">
    <div class="form-group registerform">
      <div class="text">
        <h1> 회원가입 </h1>

        <div class="button_c form-group">
          <label for="name">NAME</label>
          <input type="text" class="form-control register" name="register_name" placeholder="이름을 입력해주세요">
        </div>
        <div class="button_d form-group">
          <label for="id">ID</label>
          <table>
            <tr>
              <td><input type="text" class="form-control register" name="register_id" placeholder="아이디를 입력해주세요"></td>
              <td><button type="button" name="btn btn-default">중복검사</button></td>
            </tr>
          </table>
        </div>
        <div class="button_c form-group">
          <label for="password">PASSWORD</label>
          <input type="password" class="form-control register" name="register_pwd" placeholder="비밀번호를 입력해주세요">
          <p><font size = "1.9" color = orange> 비밀번호는 여섯자 이상으로 설정합니다. <br></font></p>
        </div>
        <div class="button_d form-group">
          <label for="nickname">NICKNAME</label>
          <table>
            <tr>
              <td><input type="text" class="form-control register" name="register_nickname" placeholder="닉네임을 입력해주세요"></td>
              <td><button type="button" name="btn btn-default">중복검사</button></td>
            </tr>
          </table>
          <p><font size = "1.9" color = orange> 여러분은 닉네임을 가지고 활동합니다. <br></font></p>
        </div>

        <button type="reset" class="btn btn-default">다시쓰기</button>
        <button type="submit" class="btn btn-default">가입하기</button>

        </div>
      </div>
  </form>

</body>
</html>
