<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>

	��Ű ���
	<br>

	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("name")) {
					Cookie cookie = new Cookie("name",
							URLEncoder.encode("JSP���α׷���", "EUC-KR"));
					response.addCookie(cookie);
				}
			}
		}
	%>
<html>
<head>
<!-- <meta charset="EUC-KR"> -->
<title>��Ű ���</title>
</head>
<body>
name ��Ű�� ���� �����մϴ�.
</body>
</html>
<
>
