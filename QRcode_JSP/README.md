# JSP로 QR코드 생성하기

모든 소스코드는 IntelliJ + Windows10 환경에서 작성되었습니다.

## 사용법

```
URL QRcode Generate
Input URL : 
```

- Input URL 우측에 있는 Input BOX에 문자열을 입력한후 Generate 버튼을 클릭
- QR코드 생성 (Wrong URL이면 오류처리)
- Again 누르면 처음 페이지로 돌아감

### 설치하기

- JDK 설치 - JAVA 개발환경 세팅을 위한 JDK 설치
- Tomcat 서버 설치 - JSP를 실행할 수 있는 웹서버를 구축하기 위해 JSP 웹서버인 Tomcat 설치

## 사용된 도구

- [JSP](<https://www.oracle.com/technetwork/java/index-jsp-138231.html>) - HTML 내에 자바 코드를 삽입하여 웹 서버에서 동적으로 웹 페이지를 생성하여 웹 브라우저에 돌려주는 언어
- [Tomcat](<http://tomcat.apache.org/>) - 서블릿 컨테이너, 웹컨테이너만 있는 웹 애플리케이션 서버
- [intelliJ](<https://www.jetbrains.com/idea/>) - 자바 통합 개발 환경