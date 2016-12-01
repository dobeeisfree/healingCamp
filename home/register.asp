<!-- 회원가입 페이지 -->
<!-- TODO 회원가입 폼 -->
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->

  <style>
  body {
    background-image:url('http://localhost/app/assets/images/login_img.png');

    background-repeat:no-repeat;
    background-size:cover;

  }

  .text{
    margin-top: 100px;
    margin-left: 500px;
    text-align:center;
  }

  </style>

</head>
<body>
  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <Script Language="JAVAScript">
  function check(){
    var blank = 0 ;
    if (FORM1.name.value == "")
    if (FORM2.register_name.value == "")
    blank = 1 ;
    if (FORM1.id.value == "")
    if (FORM2.register_id.value == "")
    blank = 1 ;
    if (FORM1.pwd.value == "")
    if (FORM2.register_pwd.value == "")
    blank = 1 ;
    if (FORM1.nickname.value == "")
    if (FORM2.register_nickname.value == "")
    blank = 1 ;
    if (blank ==1)
    {
@@ -42,50 +49,34 @@
  </Script>

  <form name="FORM2" action="http://localhost/home/login.asp" method="post" onsubmit="return check();">
    <div>
      <div class="text">
        <h1> 회원가입 </h1>

        <tr>
          <td width="99">
            <p> 이름 : <input type="text" class = "register" name="register_name"></p> <br>
            <p> 아이디 : <input type="text" class = "register" name="register_id"></p> <br>
            <p> 비밀번호 : <input type="password" class = "register" name="register_pwd" ></p>
            <p><font size = "1.7" color = orange> 비밀번호는 여섯자 이상으로 설정합니다. <br></font>
            <p> 닉네임 : <input type="text" class = "register" name="register_nickname" ></p>
            <p><font size = "1.7" color = orange> 여러분은 닉네임을 가지고 활동합니다. <br></font>
          </td>
          <br>
        </tr>

        <tr>
          <td width="680" colspan="3" ><p>
            <input type="reset">
            <input type="submit" name="submit" value=" 가입하기 ">
          </td>
        </tr>

    </form>
      </div>
    </div>
  </form>

</body>
</html>
