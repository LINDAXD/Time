<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>ID_find</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">

<style>
tr {
 border: 0px solid none;
}

 

k:hover {
 text-decoration: none;
 color: #9354ED
}
</style>


<script>
 function gohome() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./main.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
 }

 function gojoin() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./join.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
 }

 function gologin() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./login.jsp";
  frm.submit();
 }

 function goidfind() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./id_find.jsp";
  frm.submit();
 }

 function gopwfind() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./pw_find.jsp";
  frm.submit();
 }
 function logout() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./index.jsp";
  frm.submit();
 }
 
 function id_search2() { //이름,이메일로 '찾기' 버튼
	console.log("작동함");

  var frm = document.idfindscreen;

  if (frm.name2.value.length < 1) {
   alert("이름을 입력해주세요");
   return;
  }
  if (frm.email.value.length < 1 || frm.e_domain.value.length < 1) {
   alert("이메일을 입력해주세요");
   return;
  }

  frm.method = "post";
  frm.action = "./id_searchCtl2.jsp"; //넘어간화면
  frm.submit();  }

​

 //이메일 부분

 function checkid() {

  var frm = document.idfindscreen;

  var regExp = '/^([/\w/g\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/';

  if (!regExp.test(frm.email.value)) {

   alert('올바른 email을 입력해주세요.');

   frm.email.focus();

  }

 }

 function domainCheck() {

  var frm = document.idfindscreen;

  if (frm.domain.value == 0) {
   frm.e_domain.value = "";
   frm.e_domain.disabled = false;

  } else {
   frm.e_domain.value = frm.domain.value;
   frm.e_domain.disabled = true;

  }

 }
</script>


</HEAD>

<BODY>
 <form name="idfindscreen">
  <%--@ include file="./top.jsp"--%>
  <font face="Yang Rounded">


   <table width="1330px" height="430px" align="center">
    <tr>
     <td>
      <table width="600px" align="center" border="0"
       style="color: black; background-color: #F6F6F6; font-size: 20px;">
       <tr>
        <td>
         <table width="750px" align="center" border=0;
          style="background-color: white; margin-top: 3%">
          <tr>
           <td align="center"><img src="../img/miki_icon.png"
            height="30px"></td>
           <td>아이디 찾기</td>
           <td><div id="sub-title">| 회원정보에 등록한 정보로 인증.</td>
           <td width="300px"></td>
          </tr>
         </table>
        </td>
       </tr>

       <tr>
        <td>
         <table width="800px" height="300px" align="center"
          style="border: dotted 5px none; margin-top: 4%">
          <tr>
           <td>
            <table width="300px" height="20px" border="0"
             style="margin-top: 3%; font-size: 18px;">
             <br>
             <br>
             <tr>
              <td>&nbsp;&nbsp; <img src="../img/check.png"
               height="30px">
              </td>
              <td>&nbsp;이름,이메일로 찾기</td>
             </tr>
            </table>
           </td>
          </tr>
          <tr>
          <td>
           <table width="380px" height="70px" align="center" border="0"
            style="font-size: 16px;">
            <tr>
             <td>이름</td>
             <td><input type="text" name="name2"></td>
            </tr>
            <tr>
             <td style="text-align: center;">e-mail&nbsp;</td>
             <td><input type="text" name="email"
              style="width: 80px" onblur="checkid();"> @ <input
              type="text" name="e_domain" style="width: 80px"> <select
              name="domain" onchange="domainCheck();">
               <option value="0" selected="selected">직접입력</option>
               <option value="naver.com">naver.com</option>
               <option value="hanmail.net">hanmail.net</option>
               <option value="nate.com">nate.com</option>
               <option value="yahoo.com">yahoo.com</option>
             </select></td>
            </tr>
           </table>
          </td>
          </tr>

          <tr>
           <td>
            <table width="140px" height="10px" border="0"
             style="margin-top: 2%" align="center">
             <tr>
             <td>
              <input type="button" name="enter2" value="찾기"
               align="center"
               style="cursor: pointer; background: white; color: black; border-color: black;"
               onClick= "id_search2();"></td>
              <td><input type="button" name="cancle2"
               value="  취소  " align="center"
               style="cursor: pointer; background: white; color: black; border-color: black"
               onClick= "cancle();"></td>
             </tr>
            </table>
            <br>
           </td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
     </td>
    </tr>
   </table>


  </font>
 </form>
</BODY>
</HTML> 