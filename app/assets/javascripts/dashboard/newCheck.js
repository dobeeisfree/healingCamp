function check(){
 //  if(diaryForm.diaryPwd.length != 4){
 //    alert("비밀번호는 4자리로 입력해주세요.");
 //    return false;
 // }
  var blank = 0 ;
  if (diaryForm.diaryName.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_1.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_2.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_3.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_4.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_5.value == "")
  blank = 1 ;
  if (diaryForm.register_mem_6.value == "")
  blank = 1 ;
  if (diaryForm.diaryPwd.value == "")
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
