function check(){
  if(registerForm.register_pwd.length < 6){
    alert("6자리 이상 입력해주세요.");
    return false;
  }
  var blank = 0 ;
  if (registerForm.register_name.value == "")
  blank = 1 ;
  if (registerForm.register_id.value == "")
  blank = 1 ;
  if (registerForm.register_pwd.value == "")
  blank = 1 ;
  if (registerForm.register_nickname.value == "")
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
  //
  // var num = register_pwd.search(/[0-9]/g);
  // var eng = register_pwd.search(/[a-z]/ig);
  // var spe = register_pwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
  // if(registerForm.register_pwd.length < 6 || registerForm.register_pwd.length > 12){
  //  alert("6자리 ~ 12자리 이내로 입력해주세요.");
  //  return false;
  // }
  // if(registerForm.register_pwd.search(/₩s/) != -1){
  //  alert("비밀번호는 공백업이 입력해주세요.");
  //  return false;
  // } if(num < 0 || eng < 0 || spe < 0 ){
  //  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
  //  return false;
  // }
  // return true;
  // }
  // if(!check( $.trim($('#mpassword').val()))){
  //   $('#register_pwd').val('');
  //   $('#register_pwd').focus();
  //   return false;
  // }
