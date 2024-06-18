# ins 프로젝트
![N|Solid](https://mblogthumb-phinf.pstatic.net/MjAxOTA2MjVfMjE3/MDAxNTYxNDQ4NzY2NTE0.TtSGwyFSlna9C5LL_XYDjj4GdJvb4S2es6S88V2bsu0g.rldv6Eh1Zbhhy4n7yNkMmmPEhT8tKU2cdw8cJDddiokg.JPEG.hyderay/1541941442086.jpg?type=w800)

## Features

- JDK 1.8
- ORACLE 12c
- Spring Boot 3.2.6
- Maven 4.0
- MyBatis 
- ERDCLOUD
- SpringSecurity

## 세팅
1. sst(esclipse 스프링버전)툴 설치한다.
-- sts 다운로드 경로: <https://cdn.spring.io/spring-tools/release/STS4/4.23.1.RELEASE/dist/e4.32/spring-tool-suite-4-4.23.1.RELEASE-e4.32.0-macosx.cocoa.aarch64.dmg>

2. Git허브 Fork 및 Clone(깃이 설치 되지 않았으면 깃설치) Pull Request로 진행
--참고 사이트 : https://wayhome25.github.io/git/2017/07/08/git-first-pull-request-story/
-- git clone 주소 : git clone https://github.com/duckback45/ins.git

3. src/main/resources/oracle_sql 경로에서 DCL_SCRIPT.sql 먼저 계정부터 생성 -->  디비툴에서 생성된 계정으로 재로그인 --> DDL_SCRIPT.sql 쿼리 실행 --> DML_SCRIPT.sql 쿼리 실행
4. 자바가 설치 1.8로 제대로 설치 되어있는지 확인, 터미널 창에서 자바 경로가 제대로 잡혀있는지 확인 잡혀있지 않으면 자바 경로를 잡아준다.
5. clone 한 깃소스를 sts 개발툴을 통해 연다 pom.xml에 있는 dependency 설치되는게 보임, 안되면 pom.xml 우클릭 후 maven 선택 후 Update Project한다. 
6. boot Dashboar 탭에서 insurance 우클릭 후 Server 스타를 클릭 http://localhost:8080/geyak/ 경로로 들어가면 데이터를 확인 할 수 있음.

* * *
## To-be 화면
- 로그인 화면(Spring Security)
- 계약정보화면(등록, 수정, 삭제)
- 납입확인 화면(조회화면)
- 나의 보험료 알아보기 화면(람다함수로 비지니스 구현하기)