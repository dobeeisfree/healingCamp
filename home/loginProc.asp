<!--#include virtual="/healingCamp/app/utils/setup.asp" -->
<%
' 1. 유저네임과 유저비밀번호를 조회
' 2. 조회한 값에 없으면, 다시 login.asp로 가며 경고
' 3. 조회한 값이 존재하면, dashboard/index.asp 로 간다.


Set DBcon = Server.CreateObject("ADODB.Connection")
DBCon.Open(connectionString)

if DBCon.state=1 then
  response.write "<center>database connection TRUE!!!</center>"
else
  response.write "<center>database connection FALSE!!</center>"
end if


%>
