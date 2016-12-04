<!-- TODO 방생성 페이지 -->
<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!DOCTYPE html>
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
  <link href="../app/assets/stylesheets/_dashboard/new.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="../app/assets/javascripts/dashboard/newCheck.js"></script>
</haed>
<body>

  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <form name="diaryForm" action="/dashboard/newProc.asp" method="post" onsubmit="check();">
    <div class="form-group dashboardnewform">
      <p class="description">새 일기장 생성</p>
      <input type="hidden" name="diaryCreator" value="<%=Session("index")%>">
      <br><br>

      <div class="LeftSide">
        <div class="button_c form-group">
          <p>일기장 정보를 입력해주세요</p>
          <label for="name">DIARY NAME</label>
          <input type="text" class="form-control register" name="diaryName" placeholder="일기장 이름을 입력해주세요">
        </div>

        <label for="diarypassword">PASSWORD</label>
        <p align=left> * 일기장 비밀번호는 4자리로 설정해주세요 * </p>
        <div class="button_c form-group">
          <input type="text" class="form-control dashnew" name="diaryPwd" placeholder="비밀번호 설정">
        </div>

        <button type="submit" class="btn btn-default">생성완료</button>
      </div>

      <div class="RightSide">
        <label for="name">MEMBER</label><br>
        <p align=left> * 멤버들의 닉네임을 적고 일기를 작성할 순서를 설정해주세요.<br> 순서는 겹치면 안됩니다^_^* </p>
        <% For i=1 to 6 step 1 %>
        <div class="button_d form-group">
          <table>
            <tr>
              <td><input type="text" class="form-control dashnew" name="register_mem_<%=i%>" placeholder="멤버 닉네임을 입력해주세요"></td>
              <td>
                <select name="order_register_mem_<%=i%>">
                  <option value="<%=i%>" selected="selected"><%=i%></option>
                  <% For j=1 to 6 step 1 %>
                    <% If j <> i Then%>
                    <option value="<%=j%>"><%=j%></option>
                    <% End If%>
                  <% Next %>
                </select>
              </td>
            </tr>
          </table>
        </div>
        <% Next %>
     </div>
    </div>
  </form>
</body>
</html>
