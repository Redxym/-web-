package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JavaBeans.*;
import com.dao.*;

public class CartServlet extends HttpServlet{
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);	        
		}
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	String id=req.getParameter("uid");
	    	String key=req.getParameter("key");
	    	String gid=req.getParameter("gid");
	    	System.out.println(id);
	    	System.out.println(key);
	    	System.out.println(gid);
	        if(key.equals("del"))
	            doDel(req,resp,id,gid);	       
	        if(key.equals("add"))
	            doAdd(req,resp,id,gid);
	       	        
	    }
	    protected void doAdd(HttpServletRequest req, HttpServletResponse resp,String id,String gid) throws ServletException, IOException {	    		    	
	    	GoodsDao goodsDao = new GoodsDaoImpl();	      
	        Goods goods = goodsDao.findByGid(gid);
	        int num = 1;
	        Cart cart = new Cart(id,gid,num);
	        CartDao cartDao = new CartDaoImpl();
	        cartDao.add(cart);
	        	req.setAttribute("goods",goods);
	        	req.setAttribute("cart",cart);
	        	req.getRequestDispatcher("/cart.jsp").forward(req, resp);   	      
	    }
	    protected void doDel(HttpServletRequest req, HttpServletResponse resp,String id,String gid) throws ServletException, IOException {		    	
	    	GoodsDao goodsDao = new GoodsDaoImpl();	      
	        Goods goods = goodsDao.findByGid(gid);     
	        req.setAttribute("goods",goods);
	        req.getRequestDispatcher("/cart.jsp").forward(req, resp);
	        System.out.print("查到商品"+goods.getGname());
	    }

}
