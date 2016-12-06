<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<!--#include virtual="/healingCamp/app/utils/adovbs.inc" -->
<%
' 변수준비
Dim d_index, strSQL, strConn
Dim objRs

d_index = Request("d_index")

' 수정할 다이어리를 가져온다
strSQL = "SELECT * FROM diaries WHERE diary_index='" & d_index & "'"
strConn = connectionString
Set objRs = Server.CreateObject("ADODB.Recordset")
objRs.Open strSQL, strConn


' 유저 조회
Dim strMemSQL, objRs_mem
strMemSQL = "select * from collaboraters c, users u where c.diary_index =" & objRs("diary_index") & " and c.user_index = u.user_index;"

Set objRs_mem = Server.CreateObject("ADODB.Recordset")
objRs_mem.Open strMemSQL, strConn

%>
<!DOCTYPE html>
<html>
<head>
  <!--#include virtual="/healingCamp/app/layouts/main_head.html"-->
  <link href="../app/assets/stylesheets/_dashboard/new.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="../app/assets/javascripts/dashboard/newCheck.js"></script>
</haed>
<body>

  <!--#include virtual="/healingCamp/app/layouts/navbar.asp"-->

  <form name="diaryEditForm" action="/dashboard/modifyDiary.asp" method="post">
    <div class="form-group dashboardnewform">
      <p class="description">일기장 수정하기</p>
      <input type="hidden" name="diaryCreator" value="<%=Session("index")%>">
      <input type="hidden" name="d_index" value="<%=d_index%>">
      <br><br>

      <div class="LeftSide">
        <div class="button_c form-group">
          <p>일기장 정보를 입력해주세요</p>
          <label for="name">DIARY NAME</label>
          <input type="text" class="form-control register" name="diaryName" value="<%=objRs("diary_name")%>" placeholder="일기장 이름을 입력해주세요">
        </div>

        <label for="diarypassword">PASSWORD</label>
        <p align=left> * 일기장 비밀번호는 4자리로 설정해주세요 * </p>
        <div class="button_c form-group">
          <input type="text" class="form-control dashnew" name="diaryPwd" value="<%=objRs("diary_passwd")%>" maxlength="4" placeholder="비밀번호 설정">
        </div>

        <button type="submit" class="btn btn-default">다이어리 수정</button>
      </div>
    </form>

    <form name="memEditForm" action="/dashboard/modifyMem.asp" method="post">
      <div class="RightSide">
        <label for="name">MEMBER</label><br>
        <p align=left> * 멤버들의 닉네임을 적고 일기를 작성할 순서를 설정해주세요.<br> 순서는 겹치면 안됩니다^_^* </p>
        <input type="hidden" name="d_index" value="<%=d_index%>">
        <div class="button_d form-group">
          <table>
            <%
            ' 각 다이어리의 멤버 닉네임 조회
            Dim i
            i = 1
            If NOT objRs_mem.EOF Then
            Do Until objRs_mem.EOF
            %>
            <tr>
              <td>
                <fieldset disabled>
                  <input type="text" id="disabledTextInput" class="form-control dashnew" name="register_mem_<%=i%>" value="<%=objRs_mem("user_nickname")%>" placeholder="멤버 닉네임을 입력해주세요"></td>
                  <input type="hidden" name="mem_<%=i%>" value="<%=objRs_mem("user_index")%>">
                </fieldset>
              <td>
                <%
                ' 각 멤버의 순서 조회
                Dim strOrderSQL, objRs_order
                strOrderSQL = "select c.writer_order from collaboraters c, diaries d where (d.diary_index = '" & objRs("diary_index") & "') and c.user_index = '" & objRs_mem("user_index") & "' and c.diary_index = '" & objRs("diary_index") & "';"
                Set objRs_order = Server.CreateObject("ADODB.Recordset")
                objRs_order.Open strOrderSQL, strConn
                %>
                <select name="order_mem_<%=i%>">
                  <% For j = 1 to 6 step 1 %>
                    <% If j <> objRs_order("writer_order") Then %>
                    <option value="<%=j%>"><%=j%></option>
                    <% Else %>
                    <option value="<%=objRs_order("writer_order")%>" selected="selected"><%=objRs_order("writer_order")%></option>
                    <% End If %>
                  <% Next %>
                </select>
                <%
                ' 닫아줌
                objRs_order.Close
                Set objRs_order = Nothing
                %>
              </td>
            </tr>
            <%
            i = i + 1
            objRs_mem.MoveNext
            Loop
            End if

            ' 닫아주고
            objRs_mem.Close
            Set objRs_mem = Nothing
            %>
          </table>
        </div>
        <button type="submit" class="btn btn-default">멤버 수정</button>
     </div>
    </div>
  </form>
</body>
</html>
<%
objRs.Close
Set objRs = Nothing
%>
