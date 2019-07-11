package com.db;

import java.sql.*;
import java.util.ResourceBundle;

public class DBUtils {
	private static String drv; //加载驱动程序
	private static String url;//URL
	private static String uesrname;//用户名
	private static String pwd;//密码
	private static Connection conn=null;//数据库的连接对象
	private static Statement stat=null;//SQL语句的声明对象
	private DBUtils(){}
	
	//使用静态块加载驱动程序
	static{
		drv="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/shopping";
		uesrname="root";
		pwd="425128";
		try{
			Class.forName(drv);//加载驱动程序
		}catch(ClassNotFoundException e){
			System.out.println("驱动程序加载失败");
			e.printStackTrace();
		}
	}
	//定义一个获取数据库连接的方法
	public static Connection getConnection(){
		try{
			conn =DriverManager.getConnection(url,uesrname, pwd);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("获取连接失败");
		}
		finally{
			return conn;
		}
	}
	//关闭数据库连接
	public static void close(ResultSet rs,Statement stat,Connection conn){
		try{
			if(rs!=null)rs.close();
			if(stat!=null)stat.close();
			if(conn!=null)conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
