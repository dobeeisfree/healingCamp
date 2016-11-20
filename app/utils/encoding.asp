<!--

  """ asp 코드 인코딩 """

  즉 VBSscript 문법을 써서
  한글을 출력하고자 하면
  컴파일 오류가 발생하므로
  인코딩 지정파일이 필요하다.

  따라서 이 파일은
  필요시 include 해줍니다

 -->
<%@Language="VBScript" CODEPAGE="65001" %>
<%
  Response.CharSet="utf-8"
  Session.codepage="65001"
  Response.codepage="65001"
  Response.ContentType="text/html;charset=utf-8"
%>
