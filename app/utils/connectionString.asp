<%
'1. ADODB.Connection 위한 변수를 미리 준비한다.
Dim dsn, uid, pwd
dsn = "" 'sql server(localhost)의 별칭
uid = "" 'sql server 로그인이름
pwd = "" 'sql server 비밀번호


'2. 작업자가 여러명이므로
'   변수값을 다르게 해야한다.
Dim connectionString
connectionString = "DSN="&dsn&";UID="&uid&";PWD="&pwd
%>
