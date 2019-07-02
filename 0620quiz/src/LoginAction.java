
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
//		response.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
//		String rememberid = request.getParameter("rememberid");
		String value = request.getParameter("rememberid");
		
		System.out.println(value);
		
		
		// �������� ���� �����ΰ�??? name="remeberid"�� �Ķ������ ���� ���ϰ� �װ��� ���ڿ� rememberid�ȿ� �ִ´�
		// �� �̷��� Ȯ���ϴ±���.�������� �̹̹����ε� �̸��������̾�!
		// üũ�ڽ��� üũ�� Ȯ���Ϸ���,,�ش簴ü(checkbox�� ).checked���� Ȯ��������ϴµ�...
		// �⺻��ü�� �Ӽ��� �̿��ؼ� �� �����ϱ�(187p)����.
		// (135p) jsp �⺻��ü�� �Ӽ�(attribute)����ϱ⸦ Ȱ���Ͽ� �̸��� rememberid�μӼ��� ���� ���Ѵ�.
		
		//Object checked = request.getAttribute("checked"); �̰��� �ǹ�??
		// �̷��� ���� Object checked�� ������� ��F�� Ȯ������?
		
		//��Ű�迭�� �켱 ������ش�.
		Cookie[] cookies = request.getCookies();
		// 1. ���̵�� ��й�ȣ�� ��ġ�������
		if (id.equals("asdf") && pwd.equals("1234")) {

			//1.1 üũ�ڽ��� üũ�� �Ǿ��ִ��� ���θ� Ȯ�� 77p~79p ���� 
			if (value != null) {
				// 1.1.1  üũ�ڽ��� üũ�Ǿ��ִٸ� (value) Ʋ�����̴�.
				// ��� ��Ű�� �����Ѵ�.                        
				// 77p~79p �����ϸ�, üũ�� �Ǿ�������� �Ķ���͸� ���� 
				// �׸��� index.jsp����
				Cookie cookie = new Cookie("name", URLEncoder.encode(id,"EUC-KR"));
				response.addCookie(cookie);
				//��Ű�� ���⼭ �����ȵǴ°ǰ�???? --��Ű����°� ��ġ
				
				// 1.1.2 üũ�ڽ��� üũ�ȵǾ��ִٸ� (checked != true)��� ��Ű�� �����ش�. �׸��� index.jsp ����.
			} else {
				Cookie cookie = new Cookie("name",value);
				
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			response.sendRedirect("/0620quiz/index.jsp");
			
			// remebemrid�� �Ӽ��� checked�� ���� true�ϋ�??? �ٵ� �־ȵɱ�?
//			response.sendRedirect("/0620quiz/index.jsp");
			
//			2. �׿��� ��� (���̵�,��� ����ġ�Ǵ� null��)
		} else {
		
			
		// �̶� ��Ű�� �ʿ��ұ�? ��Ű�ʱ�ȭ�� �ʿ��ұ�? no ��Ű�����ʿ��Ѱ�? yes�׷���.������ �ϴ� no���Ѵ�
//			Cookie cookie = new Cookie();
//			cookie.setMaxAge(0);
//			response.addCookie(cookie);
			// 2. �׿��� ��� (���̵�,��� ����ġ�Ǵ� null��)
			response.sendRedirect("/0620quiz/login.jsp");
		}

//				
//		response.getWriter().append("Served at:�ҷ� ")	.append(request.getContextPath());
	}

}
