<!doctype html>
<html lang = "ko-kr">
<head>
  <meta charset = "utf-8"/>
  <meta name = "viewport" content = "initial-scale = 1">
  <title> Login Example ! </title>

  <link href = "css/bootstrap.min.css" rel = "stylesheet">

  <style type=”text/css”>

  #nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color: #333;
  }

  #nav li {
      float: left;
      position: relative;
  }

  .show {display:block;}
  </style>

  <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
  <!--WARING: Respond.js doesn't work if you view the page via file://-->
  <!--[if It IE 9]>
    <script src = https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js></script>
    <script src = "https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body bgcolor="pink" text="white">



  <div id=”nav”>
    <ul>
      <a class="navbar-brand" href="#">
        <img alt="Brand" src="logo.png"  height="70">
      </a>
      <li><a href="">HOME</a></li>
      <li class="nav_login"><a href="http://localhost/healingCamp/home/login_ex1.asp">LOGIN</a></li>
      <li class="nav_diary"><a href="">DIARYROOM</a></li>
      <!--<li><a href=”../about Us.html”>About Us</a></li>-->
    </ul>
  </div>

  <form name="FORM1" action="http://localhost/healingCamp/dashboard/index.asp" method="post" onsubmit="return check();">
  <div align="center">
  <table border=0 cellpadding="2" cellspacing="0" bordercolordark="eeeeee" bordercolorlight="#464646">

  <h1>안녕 교환일기장 </h1>

  <p>ID : <input type="text" class = "login" name="id"></p>
  <p>PASSWORD : <input type="password" name="pwd"></p>

  <input type="submit" name="submit" value= "로그인">
  <button type="submit" value="회원가입" onclick="location.href='http://localhost/healingCamp/home/register_ex1.asp'">회원가입</button>
  <input type="reset">

  <!--jQuery (necessary for Bootstrap's Javascript pliugins)-->

  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <!--Include all compiled plugins (below),or include individual files as needed-->
  <script sr = "js/bootstrap.min.js"></script>

  </table>
  </div>
  </form><br><br><br>
  <p align="center"><font size="3">
    아이디, 닉네임, 패스워드만으로 간단한 회원가입을 하고 교환일기를 써보세요!<br>
    교환일기를 쓸 방을 생성한 후에 자신의 교환순서에 맞게 알림이 울리면 <br>
    방 멤버들과 돌아가면서 교환일기를 쓸 수 있습니다. <br>
    아날로그 감성을 살린 소통 플랫폼 !! <br>
  </form><br><br><br>
</body>
</html>
