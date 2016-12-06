function check(){
  var blank = 0 ;
  if (loginForm.user_id.value == "")
  blank = 1 ;
  if (loginForm.user_pwd.value == "")
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
