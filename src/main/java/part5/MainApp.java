package part5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainApp {

	
	public static void main(String[] args) {
		
		ApplicationContext ac = new GenericXmlApplicationContext("spring/context5.xml");
		//ctrl shift o ´­·¯¶ó
		
		
		
		Board board = ac.getBean("board", BoardCafe.class);
		Board board2 = ac.getBean("board", BoardCafe.class);

		
		
		board.boardWrite();
	}
}