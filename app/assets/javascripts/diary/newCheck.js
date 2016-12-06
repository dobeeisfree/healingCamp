function check(){
  var blank = 0 ;
  if (diary_Form.paperTitle.value == "")
  blank = 1 ;
  if (diary_Form.paperContent.value == "")
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
