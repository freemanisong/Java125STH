
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
		
		
		// 윗내용의 뜻은 무엇인가??? name="remeberid"인 파라미터의 값을 구하고 그값을 문자열 rememberid안에 넣는다
		// 와 이렇게 확인하는구나.ㅋㅋㅋㅋ 이미배운내용인데 이리쓰일줄이야!
		// 체크박스의 체크를 확인하려면,,해당객체(checkbox의 ).checked값을 확인해줘야하는데...
		// 기본객체의 속성을 이용해서 값 전달하기(187p)생각.
		// (135p) jsp 기본객체의 속성(attribute)사용하기를 활용하여 이름이 rememberid인속성의 값을 구한다.
		
		//Object checked = request.getAttribute("checked"); 이것의 의미??
		// 이렇게 생긴 Object checked의 내용들을 어덯게 확인하지?
		
		//쿠키배열을 우선 만들어준다.
		Cookie[] cookies = request.getCookies();
		// 1. 아이디와 비밀번호가 일치했을경우
		if (id.equals("asdf") && pwd.equals("1234")) {

			//1.1 체크박스의 체크가 되어있는지 여부를 확인 77p~79p 참조 
			if (value != null) {
				// 1.1.1  체크박스가 체크되어있다면 (value) 틀린말이다.
				// 라면 쿠키를 생성한다.                        
				// 77p~79p 참조하면, 체크가 되어있을경우 파라미터를 전송 
				// 그리고 index.jsp연결
				Cookie cookie = new Cookie("name", URLEncoder.encode(id,"EUC-KR"));
				response.addCookie(cookie);
				//쿠키를 여기서 만들면안되는건가???? --쿠키만드는곳 위치
				
				// 1.1.2 체크박스가 체크안되어있다면 (checked != true)라면 쿠키를 지워준다. 그리고 index.jsp 연결.
			} else {
				Cookie cookie = new Cookie("name",value);
				
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			response.sendRedirect("/0620quiz/index.jsp");
			
			// remebemrid의 속성인 checked의 값이 true일떄??? 근데 왜안될까?
//			response.sendRedirect("/0620quiz/index.jsp");
			
//			2. 그외의 경우 (아이디,비번 불일치또는 null값)
		} else {
		
			
		// 이때 쿠키가 필요할까? 쿠키초기화가 필요할까? no 쿠키생성필요한가? yes그런듯.하지만 일단 no로한다
//			Cookie cookie = new Cookie();
//			cookie.setMaxAge(0);
//			response.addCookie(cookie);
			// 2. 그외의 경우 (아이디,비번 불일치또는 null값)
			response.sendRedirect("/0620quiz/login.jsp");
		}

//				
//		response.getWriter().append("Served at:할로 ")	.append(request.getContextPath());
	}

}
