# JSP 팀프로젝트  <img src="https://img.shields.io/badge/JDK-11.0.2-green">  <img src="https://img.shields.io/badge/-MySQL-blue">  <img src="https://img.shields.io/badge/JSP-11.0.2-red">

💡 `#JSP`와 `#DB`를 이용하여 만든 ** BBS프로젝트**  
<br>

## ✔ 프로젝트 소개 
- 개발기간 : 22/12/19 ~ 22/12/30
- 개발환경 : Windows 10
- 개발도구 : <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-2C2255?style=for-the-badge&logo=GitHub&logoColor=white"> <img src="https://img.shields.io/badge/Notion-2C2255?style=for-the-badge&logo=Notion&logoColor=white">
- 프로젝트 성격 : JSP & DB
- 프로젝트 목표 : DAO,VO,Action,DB
<br>
<br>

### 🔘구현 기능
|기능|상세내용
|:---:|:---:
|Main|등록된 게시물의 전체 목록과 함께 <br>(`게시물 등록`, `게시물 조회`, `게시물 삭제`,`회원가입`,`로그인`,`프로그램 종료`) 메뉴를 보여준다. 
|Create|새로운 게시물을 작성하고 저장한다. 
|Read|등록된 게시물의 전체 목록을 보여준다. 
|Update|등록된 게시물의 제목, 내용, 작성자를 수정한다. 
|Delete|등록된 게시물을 삭제한다. 
|Exit|프로그램을 종료한다. 
|Join|새 사용자를 등록한다.
|Login|등록한 아이디와 비밀번호로 로그인을 한다.
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
* 게시물 등록 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/1_create.png" width="400" height="400">

* 게시물 읽기 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/2_read.png" width="400" height="400">

* 회원가입 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/4_join.png" width="400" height="300">

* 로그인 기능<br> 
&rarr; 로그인을 하면 [게시물 목록] 옆에 로그인한 아이디가 표시된다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/5_login.png" width="450" height="300">

* 프로그램 종료 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/6_exit.png" width="400" height="300">

* 로그인 후 개인 작성글 한정 삭제 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_delete.png" width="400" height="400">

* 로그인 후 개인 작성글 수정 기능<br> 
&rarr; 스스로 작성한 글이므로 글쓴이는 수정이 불가능하다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_update.png" width="400" height="400">
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_update2.png" width="400" height="300">

* 로그아웃 기능<br> 
&rarr; 로그아웃을 하면 표시됐던 아이디가 사라진다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/logout.png" width="400" height="400">
<br>

***************
<b> 💡프로젝트 회고</b>
```
자바에서 데이터베이스를 연동하는 부분을 몇번의 시행착오를 통해 성공해내면서 
데이터들이 어떤 구조로 연동이 되는지 제대로 이해하고 습득할 수 있었던 
좋은 기회였습니다. 무엇보다 이론적으로만 배웠던 CRUD 기능을 직접 구현해볼 수 있어서 좋았고 
자바 공부에도 큰 도움이 되었던 프로젝트였습니다. 
이 다음에는 데이터베이스를 오라클뿐만 아니라 mySQL로도 연동해보고 
좀 더 다양한 DB를 다룰 수 있도록 노력해야겠다고 생각했습니다.
```

