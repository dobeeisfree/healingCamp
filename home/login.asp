<!-- TODO 로그아웃 버튼 -->
<!-- TODO 회원가입 버튼 -->
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!DOCTYPE html>
<html>
  <head>
    <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->

    <style media="screen">
    body {
      background-image:url('http://localhost/app/assets/images/login_img.png');
      background-repeat:no-repeat;
      background-size:cover;





    }
    .text{
      margin-top: 100px;
      margin-left: 600px;
      text-align:center;
    }

    .button_c{
      text-align:right;
      margin-right: 250px;
    }
    </style>

  </haed>
  <body>
    <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->
    <p><%response.write(date())%></p>


      <form name="FORM1" action="http://localhost/dashboard/index.asp" method="post" onsubmit="return check();">
      <div>
      <table border=0 cellpadding="2" cellspacing="0" bordercolordark="eeeeee" bordercolorlight="#464646">

      <div class="text">
      <h1>안녕 교환일기장 </h1>
      <br><br>


      <p><font size="2">
        아이디, 닉네임, 패스워드만으로 간단한 회원가입을 하고 교환일기를 써보세요!<br>
        교환일기를 쓸 방을 생성한 후에 자신의 교환순서에 맞게 알림이 울리면 <br>
        방 멤버들과 돌아가면서 교환일기를 쓸 수 있습니다. <br>
        아날로그 감성을 살린 소통 플랫폼입니다! <br></p>

        <div class="button_c">
          <p>ID : <input type="text" class = "login" name="id"></p>
          <p>PASSWORD : <input type="password" name="pwd"></p>
      </div>

      <input type="submit" name="submit" value= "로그인">
      <button type="submit" value="회원가입" onclick="location.href='http://localhost/healingCamp/home/register_ex1.asp'">회원가입</button>
      </div>
      <!--jQuery (necessary for Bootstrap's Javascript pliugins)-->

      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
      <!--Include all compiled plugins (below),or include individual files as needed-->
      <script sr = "js/bootstrap.min.js"></script>

      </table>
      </div>
      </form><br><br><br>
      </form><br><br><br>

  </body>
</html>
