package by.bsu.famcs.startSpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class StartSpring {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		System.out.println(context.getBean("person"));
		((ClassPathXmlApplicationContext) context).close();
	}

}
