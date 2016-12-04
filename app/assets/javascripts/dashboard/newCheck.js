function check(){
  var blank = 0 ;
  if (FORM1.diaryname.value == "")
  blank = 1 ;
  if (FORM1.member1.value == "")
  blank = 1 ;
  if (FORM1.member2.value == "")
  blank = 1 ;
  if (FORM1.member3.value == "")
  blank = 1 ;
  if (FORM1.member4.value == "")
  blank = 1 ;
  if (FORM1.member5.value == "")
  blank = 1 ;
  if (FORM1.member6.value == "")
  blank = 1 ;
  if (FORM1.diarypwd.value == "")
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
