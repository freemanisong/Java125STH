<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!-- �̰� ����Ʈ �ڵ����� �������? ctrl shift o �ص� �ȵǴ��� ��¥��? -->
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("����ȣ", "EUC-KR"));
	response.addCookie(cookie);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű���� �Ѵ���?</title>
</head>
<body>


<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %>"
</body>
</html>