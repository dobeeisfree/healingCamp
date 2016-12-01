<!-- TODO 회원가입 페이지 -->
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!doctype html>
<html lang = "ko-kr">
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->

  <style media="screen">
  body {
    background-image:url('http://localhost/app/assets/images/login_img.png');

    background-repeat:no-repeat;
    background-size:cover;

  }
  </style>

</head>
<body>
  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
  <Script Language="JAVAScript">
  function check(){
    var blank = 0 ;
    if (FORM1.name.value == "")
    blank = 1 ;
    if (FORM1.id.value == "")
    blank = 1 ;
    if (FORM1.pwd.value == "")
    blank = 1 ;
    if (FORM1.nickname.value == "")
    blank = 1 ;
    if (blank ==1)
    {
      alert("빈란이 있습니다. 채워주세요.") ;
      return (false)
    }
    else
    {
      return (true) ;
    }
  }
  </Script>


  <form name="FORM1" action="http://localhost/home/login.asp" method="post" onsubmit="return check();">
    <div align="center"><table border=0 cellpadding="2" cellspacing="0" bordercolordark="eeeeee" bordercolorlight="#464646">

      <h1> 회원가입 </h1>

      <tr>
        <td width="99" align=left>
          <p> 이름NAME : <input type="text" class = "register" name="name" ></p>
        </td>
        <br>
      </tr>

      <tr>
        <td width="99" align=left>
          <p> 아이디ID : <input type="text" class = "register" name="id"></p>
        </td>
        <br>
      </tr>

      <tr>
        <td width="99" align=left>
          <p> 비밀번호PASSWORD : <input type="password" class = "register" name="pwd" ></p>
          <p><font size = "1.5"> 비밀번호는 여섯자 이상으로 설정합니다. </font>
        </td>
        <br>
      </tr>

      <tr>
        <td width="99" align=left>
          <p> NICKNAME : <input type="text" class = "register" name="nickname" ></p>
          <p><font size = "1.5"> 여러분은 닉네임을 가지고 활동합니다. </font>
        </td>
        <br>
      </tr>

      <!--<p>ID : <input type="text" class = "login" name="id"></p>-->
      <!--<p>PASSWORD : <input type="password" name="pwd"></p>-->
      <tr>
        <td width="680" align="center" colspan="3" ><p>
          <input type="reset">
          <input type="submit" name="submit" value=" 가입하기 ">
        </td>
      </tr>
    </form>

</body>
</html>
