function check(){
  var blank = 0 ;
  if (FORM1.name.value == "")
  if (FORM2.register_name.value == "")
  blank = 1 ;
  if (FORM1.id.value == "")
  if (FORM2.register_id.value == "")
  blank = 1 ;
  if (FORM1.pwd.value == "")
  if (FORM2.register_pwd.value == "")
  blank = 1 ;
  if (FORM1.nickname.value == "")
  if (FORM2.register_nickname.value == "")
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
