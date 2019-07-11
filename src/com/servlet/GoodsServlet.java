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
public class GoodsServlet extends HttpServlet{
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doGet(req, resp);	        
	    }

	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	String name = req.getParameter("goods_detail");
	        if(name.equals("search"))
	            doSearch(req,resp);
	        else if(name.equals("info")){
	        	String gid = req.getParameter("gid");
		    	System.out.println(gid);
		    	doInfo(req,resp,gid);
	        }
	            
	        
	    }
	    protected void doSearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	String gname = req.getParameter("gname");	    	
	    	GoodsDao goodsDao = new GoodsDaoImpl();	      
	        Goods goods = goodsDao.findByGname(gname);
	        System.out.println(goods.getGid()+"aaaaa");
	        if(gname.equals(goods.getGname())){	
	        	req.setAttribute("goods",goods);
	        	req.getRequestDispatcher("/goods_main.jsp").forward(req, resp);
	        	System.out.print("查到商品"+goods.getGname());
	        }else{
	        	System.out.println("查无此商品");
	        	req.getRequestDispatcher("/goods_main.jsp").forward(req, resp);
	        }
	    }
	    protected void doInfo(HttpServletRequest req, HttpServletResponse resp,String gid) throws ServletException, IOException {		    	
	    	GoodsDao goodsDao = new GoodsDaoImpl();	      
	        Goods goods = goodsDao.findByGid(gid);        
	        req.setAttribute("goods",goods);
	        req.getRequestDispatcher("/goods.jsp").forward(req, resp);
	        System.out.print("查到商品"+goods.getGname());
	    }
	    

}
