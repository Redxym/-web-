package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JavaBeans.Goods;
import com.JavaBeans.User;
import com.dao.*;

public class UserServlet extends HttpServlet{
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String key=req.getParameter("key");
	        System.out.println(key);
	        if(key.equals("add"))
	            doAdd(req,resp);
	        if(key.equals("login"))
	            doLogin(req,resp);
	        if(key.equals("update"))
	           doUpdate(req,resp);
	        if(key.equals("quit"))
		           doQuit(req,resp);
	 }
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        //super.doGet(req, resp);
	        doPost(req,resp);
	    }
	 
	 protected void doAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String id=req.getParameter("id");
	        String uname="asd";
	        String pwd=req.getParameter("pwd");
	        String passwordc=req.getParameter("passwordc");
	        UserDao userDao1 = new UserDaoImpl();
	        User user1 = userDao1.findById(id);
	        if(id.equals(user1.getId())){
	        	req.getRequestDispatcher("/register.jsp").forward(req, resp);
	        }else{
	        	User u=new User(id,pwd,uname);
		        UserDao userDao = new UserDaoImpl();
		        userDao.add(u);
		        if(!id.equals("")&&!pwd.equals("")&&pwd.equals(passwordc)){
		        	//&&agree.equals("on")&&!agree.equals("")
		        	req.getRequestDispatcher("/login.jsp").forward(req, resp);
		        	System.out.println("注册成功");
		        }else{
		        	System.out.print("请重新输入注册信息");
		        	req.getRequestDispatcher("/register.jsp").forward(req, resp);
		        }
	        }
	    }	 
	 protected void doLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String id=req.getParameter("userId");
	        String pwd=req.getParameter("userPwd");             
	        UserDao userDao = new UserDaoImpl();	      
	        User user = userDao.findById(id);	      
	        if(pwd.equals(user.getPwd())){
	        	HttpSession session=req.getSession();
	        	session.setAttribute("user",user.getId());
	        	req.getRequestDispatcher("/index.jsp").forward(req, resp);
	        	System.out.print("登录成功"+user.getId());
	        }else{
	        	System.out.println("请重新输入登录信息");
	        	req.getRequestDispatcher("/login.jsp").forward(req, resp);
	        }
	        
	 }
	 protected void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 	String userID=req.getParameter("userid");		 	
	        String username=req.getParameter("username");
	        String newpwd=req.getParameter("newpwd");
	        String checkpwd=req.getParameter("checkpwd");
	        if(!username.equals("")&&!newpwd.equals("")&&newpwd.equals(checkpwd)){
	        	UserDao userDao = new UserDaoImpl();
		        User user1 = new User(userID,newpwd,username);
		        userDao.updateUser(user1);//更新用户信息		       
		        System.out.println("新增成功,请重新登录");
	        	req.getRequestDispatcher("/login.jsp").forward(req, resp);
	        }else{
	        	System.out.print("请重新输入修改信息");
	        	req.getRequestDispatcher("/updateInfo.jsp").forward(req, resp);
	        }
	    }
	 protected void doQuit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {			
		 String user=req.getParameter("userID");
		 user=null;
		 HttpSession session=req.getSession();
		 session.setAttribute("user",user);
		 session.removeAttribute("user");	
		 session.invalidate(); 
		 req.getRequestDispatcher("/login.jsp").forward(req, resp); 	     	        		        
	 }
}
