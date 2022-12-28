# JSP 팀프로젝트  <img src="https://img.shields.io/badge/JDK-11.0.2-green">  <img src="https://img.shields.io/badge/-MySQL-blue">  <img src="https://img.shields.io/badge/JSP-red"> <img src="https://img.shields.io/badge/JAVASCRIT-yellow">  <img src="https://img.shields.io/badge/HTML5-yellow">  <img src="https://img.shields.io/badge/CSS3-yellow"> 

💡 `#JSP`와 `#DB`를 이용하여 만든 ** BBS프로젝트**  
<br>

## ✔ 프로젝트 소개 
- 개발기간 : 22/12/19 ~ 22/12/30
- 개발환경 : Windows 10
- 개발도구 : <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white">  <img src="https://img.shields.io/badge/MYSQL-2C2255?style=for-the-badge&logo=MYSQL&logoColor=white"> 
- 버전관리 : <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"> <img src="https://img.shields.io/badge/Notion-2C2255?style=for-the-badge&logo=Notion&logoColor=white">
- 프로젝트 성격 : JSP & DB
- 프로젝트 목표 : 애브리 타임 이라는 학사 관리 앱을 모티브로 한 학사 관리 웹 아카데미 타임을 프로그래밍
- 애브리타임 주소 : https://everytime.kr/
- 아카데미 타임 주소 :  http://localhost:8090/BBS2/main.jsp
<br>
<br>

------

# 사용법:eyes:

### 실행

Tomcat v9.0 설치 후 server 생성,

root directory에서 Run As → Run on Server

------

### 🔘구현 기능
|기능|상세내용
|:---:|:---:
|메인|등록된 게시물의 전체 목록과 함께 <br>(`메인화면`, `게시판`, `수강신청`,`캘린더`,`접속하기`,`회원가입`,`로그인`,`아이디/비밀번호찾기`) 메뉴를 보여준다. 
|게시판|새로운 게시물을 작성하고 저장한다.
|답글|게시판에 세시물의 대한 답글을 작성하고 수정할 수 있다.
|수강신청|원하는 수강을 신청하고 철회할 수 있다
|수강후기|수강에대한 후기를 작성하고 공유할 수 있다
|캘린더|날짜와 일정표를 보여준다
|회원가입|새 사용자를 등록한다.
|로그인|등록한 아이디와 비밀번호로 로그인을 한다.
<br>
<br>

### 🔘클래스 구조
|클래스|상세내용
|:---:|:---:
|Board.java|board 테이블의 한 개의 행(게시물)을 저장하는 클래스
|User.java|Users 테이블의 한 개의 행(가입정보)을 저장하는 클래스
|Main.java|게시물의 목록과 선택 메뉴를 보여주고, 메서드를 구현 및 실행하는 클래스
<br>
<br>

***************
<b> 🖥기능별 구동 예시</b>
* 메인 화면 및 캘린더 강좌 목록 기능
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/main.PNG" width="1164" height="555">

* 로그인 및 회원가입 기능
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/login.PNG" width="1164" height="555">

* 아이디/ 비밀번호 찾기 기능
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/id_password.PNG" width="1164" height="555">

* 게시판 기능 및 수강신청<br> 
&rarr; 로그인을 하면 [게시물 목록] 옆에 로그인한 아이디가 표시된다. 
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/bbs.PNG" width="1164" height="555">

* 회원 탈퇴 기능
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/idout.PNG" width="1164" height="555">

* 수강 후기 및 캘린더 기능
<img src="https://github.com/LINDAXD/Time/blob/main/jsp_bbs_prac-master/img/calendar.PNG" width="1164" height="555">

***************
<b> 💡프로젝트 회고</b>
```

```

노션 주소: https://quilt-submarine-9ff.notion.site/2-JSP-04190f9ca2744020a16253ab5235e40f

