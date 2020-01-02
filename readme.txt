Eclipse 및 Tomcat 설치를 통한 구동이 필요합니다.
jdk환경변수 설정이 필요 합니다.

https://github.com/mmdltmddnr/worknet
/util/Gmail.java의 구글아이디와 비밀번호 기입이 필요합니다.
구글 계정의 보안설정에서 제3자 액서스가 필요합니다.
emailSendAction.jsp에 from 변수 설정이 필요합니다.

/util/DatabaseUtil.java 
/usercar/UserCarDAO.java
/user/UserDAO.java
/repair/RepairDAO.java
/BbsDAO/BbsDAO.java
5개의 클래스 코드에 dbID와 dbPassword 변수의 데이터베이스 계정이 필요합니다.

BBS query.sql의 query 실행을 통한 table 생성이 필요 합니다.

서버 구동 이후 크롬 및 익스플로러에서 실행하길 권장 합니다.



JAVA / JSP 기반 차량관리 시스템
-	개인 차량 관리 및 커뮤니티를 통한 정보공유를 위한 웹사이트 제작

1.	개요
차량관리 시스템은 사용자가 개인 계정을 가지고 자신의 차량 정보를 등록하여 정비 및 주유 등의 지출내역을 관리하는 시스템이다.
추가적으로 사용자는 지도 검색을 통해 주유소 정보를 찾을 수 있으며, 자유게시판을 이용하여 사용자들 간에 차량정보 공유가 가능하다.

2.	사용(가능)한 기술 및 툴
-	jre1.8.0, mysql-connector-java-8.0.18.jar, activation.jar, mail.jar, cos.jar, JDBC, JSP2.3, Servlet3.1, HTML5, CSS3, Javascript1.8.5, EL3.0, JSTL1.2, jQuery3.2.1, XML, Ajax, JSON, Bootstrap3.3.7, OpenApi (KakaoMap) etc, Eclipse 4.11.0, apache-tomcat-9.0.29, MYSQL Workbench 8.0CE etc.
-	
3.	액션 플로우

→ 회원가입 폼 작성 후 이메일 인증을 통한 회원가입 완료. (입력되지 않은 사항이 있거나, 아이디중복의 경우 회원가입이 이루어지지 않으며, 이메일 인증을 하지 않았을 시 이메일 인증을 하라는 메시지가 뜸)
→ 로그인을 하지 않았을 경우, 메인 화면에 자신의 차량 정보가 뜨지 않음.

→ 로그인 후, 메인 화면의 MY차량관리바로가기 or 메뉴의 MY차량관리를 통해 개인 차량 정보를 등록
→ 개인 차량 입력 정보는 연비 값이 계산되어 추가되어지고, 사이트의 메인 화면에 보여 짐.
→ 메뉴의 MY정비기록 선택 후 폼 작성을 통해 차량 정비 및 기타에 대한 지출을 기록 
→ MY차계부 선택 시, 정비기록내역을 최신 날짜순으로 볼 수 있으며, 수정 및 삭제, 내용검색, 지출 총금액, 내용검색별 지출 총 금액 확인이 가능.
→ 자유게시판 선택 시, 사용자 간의 차량 정보 공유가 가능하도록 함. 게시글 작성, 수정, 삭제 및 목록으로 돌아가기, 댓글작성이 가능함
→ 가까운 주유소 찾기 선택 시, ‘대구 중구 주유소’ 와 같은 키워드 검색을 통해 주유소 정보를 알 수 있음
