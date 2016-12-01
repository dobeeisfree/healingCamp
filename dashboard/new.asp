<!-- TODO 방생성 페이지 -->
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!DOCTYPE html>
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->

  <Script Language="JAVAScript">
  function check(){
    var blank = 0 ;
    if (FORM1.diaryname.value == "")
    blank = 1 ;
    if (FORM1.member1.value == "")
    blank = 1 ;
    if (FORM1.member2.value == "")
    blank = 1 ;
    if (FORM1.member3.value == "")
    blank = 1 ;
    if (FORM1.member4.value == "")
    blank = 1 ;
    if (FORM1.member5.value == "")
    blank = 1 ;
    if (FORM1.member6.value == "")
    blank = 1 ;
    if (FORM1.diarypwd.value == "")
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

<!--<style media="screen">
  body {
    background-image:url('http://localhost/app/assets/images/meo.png');
    background-repeat:no-repeat;
    background-size:cover;
  }
  </style>-->

</haed>
<body bgcolor="pink" text="white">
  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <h1 align=center>새 일기장 생성</h1>
  <br><br>
    <ol align=center>
      <p>일기장 정보를 입력해주세요</p>
      <p >일기장 이름  <input type="text" class = "new" name="diaryname"></p>
      <p align=left> * 멤버들과 일기를 작성할 순서를 겹치지 않게 설정해주세요 * </p>
      <p> 멤버 <input type="text" class = "new" name="member1">
      <select name="order">
        <option value="1" selected="selected">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
      </select>
      </p>

      <p>  <input type="text" class = "new" name="member2">
      <select name="order">
        <option value="1" selected="selected">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
      </select>
      </p>
      <p>  <input type="text" class = "new" name="member3">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
      </p>
      <p>  <input type="text" class = "new" name="member4">
      <select name="order">
        <option value="1" selected="selected">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
      </select>
      </p>
      <p>  <input type="text" class = "new" name="member5">
      <select name="order">
        <option value="1" selected="selected">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
      </select>
      </p>
      <p>  <input type="text" class = "new" name="member6">
      <select name="order">
        <option value="1" selected="selected">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
      </select>
      </p>

      <div class="row">
        <div class="col-lg-3">
          <div class="input-group">
            <input type="text" class="form-control" aria-label="...">
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="caret"></span></button>
              <ul class="dropdown-menu dropdown-menu-right">
                <li><a href="#" name="one">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row -->

      <p align=left> * 일기장 비밀번호는 4자리로 설정해주세요 * </p>
      <p>방 비밀번호   <input type="password" class = "new" name="diarypwd"></p>

      <button type="submit" value="완료" onclick="location.href='http://localhost/healingCamp/dashboard/index.asp'">일기장 생성</button>
    </ol>


</body>
</html>
