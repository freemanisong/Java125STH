<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%-- 주석은 이렇게 한다.   --%>
<%-- 1.쿠키를 읽는다 --%>
<%-- 1.1 쿠키가 있으면 쿠키의 ID값을뿌려준다 ID창에, 그리고 체크박스에 체크가 되어 있게 한다. --%>
<%-- 1.2 쿠키가 없으면 쿠키의 ID값을뿌려주지않는다 다지운다 ID창에, 그리고 체크박스에 체크가 안되어 있게 한다. --%>
<%
	Cookie[] cookies = request.getCookies();
	String id = "";
	String a = "";
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			//쿠키 배열들이있겠지 , 그럼 여기서
			// getname 한것이 name인것만 골라서 그것의 value값을 구한다.
			if (cookies[i].getName().equals("name")) {
				//마찬가지로 id도 lv가 아닌 iv값이다.
				id = cookies[i].getValue();
				//그리고 체크박스에 성공한채로 로그인 성공한다면 그다음 창부터는 (쿠키제거가 되지않는한)
				// 체크박스에 체크가 되어있어야한다
				//해당 경우에 , 문자열 변수 a를 우선 iv값으로 놓고 그값에 checked를 대입
				// a를 for문 바깥쪽에 놔두지 않아서 (iv로 설정하지않아서) 문제가 발생했었다.
				a = "checked";
				System.out.println("id = " + id );
				System.out.println("a = " + a );
				

			}
		}
	}
	// 쿠키중에서 이름이 id인것이있는지 확인
%>

<%--LoginAction.java단에서 쿠키를 생성하거나 제거할텐데.. 쿠키를 읽어온다  jsp는 다음코드를 사용해서 쿠키값을 읽어 올수 있다. --%>
<%-- 로직은 위에 /페이지 출력단 아래에(페이지 출력단에 로직은 최소화해라 없는게 제일좋다.) --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>능자's blog</title>
</head>

<body>
	<!--이 폼에 데이터를 입력한후 로그인버튼 누르면  웹브라우저는  /0620quiz/LoginAction 으로 입력한 데이터를 전송-->
	<form action="/0620quiz/LoginAction" method=get>


		<!-- 우선 입력받아야 하므로 form 태그로 아이디,비밀번호 입력창과, 로그인 버튼을 만든다. 지역변수임을 관과했다.-->
		ID : <input name="id" type=text value="<%=id%>" placeholder="your ID."><br>
		비번 : <input name="pwd" type=password value="" placeholder="your PASSWORD."><br>
			 <input type="checkbox" name="rememberid" value="" <%=a%> style="width: 20px; height: 22px;">remember
		    my ID.<br> 
		     <input type=submit value="login">

	</form>
	<br>반가워요
	<br>
</body>
</html>