<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%-- �ּ��� �̷��� �Ѵ�.   --%>
<%-- 1.��Ű�� �д´� --%>
<%-- 1.1 ��Ű�� ������ ��Ű�� ID�����ѷ��ش� IDâ��, �׸��� üũ�ڽ��� üũ�� �Ǿ� �ְ� �Ѵ�. --%>
<%-- 1.2 ��Ű�� ������ ��Ű�� ID�����ѷ������ʴ´� ������� IDâ��, �׸��� üũ�ڽ��� üũ�� �ȵǾ� �ְ� �Ѵ�. --%>
<%
	Cookie[] cookies = request.getCookies();
	String id = "";
	String a = "";
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			//��Ű �迭�����ְ��� , �׷� ���⼭
			// getname �Ѱ��� name�ΰ͸� ��� �װ��� value���� ���Ѵ�.
			if (cookies[i].getName().equals("name")) {
				//���������� id�� lv�� �ƴ� iv���̴�.
				id = cookies[i].getValue();
				//�׸��� üũ�ڽ��� ������ä�� �α��� �����Ѵٸ� �״��� â���ʹ� (��Ű���Ű� �����ʴ���)
				// üũ�ڽ��� üũ�� �Ǿ��־���Ѵ�
				//�ش� ��쿡 , ���ڿ� ���� a�� �켱 iv������ ���� �װ��� checked�� ����
				// a�� for�� �ٱ��ʿ� ������ �ʾƼ� (iv�� ���������ʾƼ�) ������ �߻��߾���.
				a = "checked";
				System.out.println("id = " + id );
				System.out.println("a = " + a );
				

			}
		}
	}
	// ��Ű�߿��� �̸��� id�ΰ����ִ��� Ȯ��
%>

<%--LoginAction.java�ܿ��� ��Ű�� �����ϰų� �������ٵ�.. ��Ű�� �о�´�  jsp�� �����ڵ带 ����ؼ� ��Ű���� �о� �ü� �ִ�. --%>
<%-- ������ ���� /������ ��´� �Ʒ���(������ ��´ܿ� ������ �ּ�ȭ�ض� ���°� ��������.) --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����'s blog</title>
</head>

<body>
	<!--�� ���� �����͸� �Է����� �α��ι�ư ������  ����������  /0620quiz/LoginAction ���� �Է��� �����͸� ����-->
	<form action="/0620quiz/LoginAction" method=get>


		<!-- �켱 �Է¹޾ƾ� �ϹǷ� form �±׷� ���̵�,��й�ȣ �Է�â��, �α��� ��ư�� �����. ������������ �����ߴ�.-->
		ID : <input name="id" type=text value="<%=id%>" placeholder="your ID."><br>
		��� : <input name="pwd" type=password value="" placeholder="your PASSWORD."><br>
			 <input type="checkbox" name="rememberid" value="" <%=a%> style="width: 20px; height: 22px;">remember
		    my ID.<br> 
		     <input type=submit value="login">

	</form>
	<br>�ݰ�����
	<br>
</body>
</html>