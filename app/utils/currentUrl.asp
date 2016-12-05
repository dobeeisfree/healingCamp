<%
Dim protocol
Dim domainName
Dim fileName
Dim queryString
Dim url

protocol = "http"
If lcase(request.ServerVariables("HTTPS"))<> "off" Then
   protocol = "https"
End If

domainName= Request.ServerVariables("SERVER_NAME")
fileName= Request.ServerVariables("SCRIPT_NAME")
queryString= Request.ServerVariables("QUERY_STRING")

url = protocol & "://" & domainName & fileName
If Len(queryString)<>0 Then
   url = url & "?" & queryString
End If
' http://localhost/home/login.asp
%>
