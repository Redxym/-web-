package com.db;

import java.sql.*;
import java.util.ResourceBundle;

public class DBUtils {
	private static String drv; //������������
	private static String url;//URL
	private static String uesrname;//�û���
	private static String pwd;//����
	private static Connection conn=null;//���ݿ�����Ӷ���
	private static Statement stat=null;//SQL������������
	private DBUtils(){}
	
	//ʹ�þ�̬�������������
	static{
		drv="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/shopping";
		uesrname="root";
		pwd="425128";
		try{
			Class.forName(drv);//������������
		}catch(ClassNotFoundException e){
			System.out.println("�����������ʧ��");
			e.printStackTrace();
		}
	}
	//����һ����ȡ���ݿ����ӵķ���
	public static Connection getConnection(){
		try{
			conn =DriverManager.getConnection(url,uesrname, pwd);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("��ȡ����ʧ��");
		}
		finally{
			return conn;
		}
	}
	//�ر����ݿ�����
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
