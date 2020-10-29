package com.mingo.smartStore.goods;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				
				
				"com/mingo/smartStore/goods/beans/beans.xml"
				);
				
				
				
				menuDAO menuDAO = (menuDAO)context.getBean("menuDAO");
				
				System.out.println("The record count is " + menuDAO.getRowCount());
				
				context.close();
			
	}

}
