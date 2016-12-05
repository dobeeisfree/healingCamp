function checkid()
{
	   if(document.signform.user_id.value == "")  {
	   	   alert("체크할 아이디를 적으세요");
	   	   document.signform.user_id.focus();
	   	   return;
	   	   }
	   var id
	   id = document.signform.user_id.value
	   window.open("checkUniqID.asp?user_id="
+id , "win1" , "toolbar=no,status=yes,width=400,height=300,resizeable=no,menubar=no")
}
