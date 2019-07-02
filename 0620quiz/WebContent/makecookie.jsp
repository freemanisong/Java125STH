<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!-- 이거 임포트 자동으로 어떻게하지? ctrl shift o 해도 안되던데 우짜나? -->
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("송태호", "EUC-KR"));
	response.addCookie(cookie);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키생성 한다잇?</title>
</head>
<body>


<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
</body>
</html>