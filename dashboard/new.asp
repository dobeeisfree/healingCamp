<!-- TODO 방생성 페이지 -->
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!DOCTYPE html>
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->

</haed>
<body>
  <link href="../app/assets/stylesheets/_dashboard/new.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="../app/assets/javascripts/dashboard/newCheck.js"></script>
  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <form name="dashboardnewForm" action="dashboardnewProc.asp" method="post" onsubmit="check();">
    <div class="form-group dashboardnewform">
      <h1 align=center>새 일기장 생성</h1>
      <br><br>

      <div class="button_c form-group">
        <p>일기장 정보를 입력해주세요</p>
        <label for="name">DIARY NAME</label>
        <input type="text" class="form-control register" name="diary_name" placeholder="다이어리 이름을 입력해주세요">
      </div>

      <p align=left> * 멤버들의 닉네임을 적고 일기를 작성할 순서를 설정해주세요. 순서는 겹지면 안됩니다^_^* </p>
      <div class="button_c form-group">
        <label for="name">MEMBER</label><br>
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem1" placeholder="멤버 닉네임을 입력해주세요">
      </div>

      <div class="button_c form-group">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem2" placeholder="멤버 닉네임을 입력해주세요">
      </div>

      <div class="button_c form-group">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem3" placeholder="멤버 닉네임을 입력해주세요">
      </div>
      <div class="button_c form-group">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem4" placeholder="멤버 닉네임을 입력해주세요">
      </div>
      <div class="button_c form-group">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem5" placeholder="멤버 닉네임을 입력해주세요">
      </div>
      <div class="button_c form-group">
        <select name="order">
          <option value="1" selected="selected">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
        </select>
        <input type="text" class="form-control dashnew" name="register_mem6" placeholder="멤버 닉네임을 입력해주세요">
      </div>

      <p align=left> * 일기장 비밀번호는 4자리로 설정해주세요 * </p>
      <div class="button_c form-group">
        <label for="diarypassword">PASSWORD</label>
        <input type="text" class="form-control dashnew" name="diarypassword" placeholder="비밀번호 설정">
      </div>

      <button type="submit" class="btn btn-default" onclick="location.href='http://localhost/healingCamp/dashboard/index.asp'">생성완료</button>
   </div>
  </form>
</body>
</html>
