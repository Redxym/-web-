package com.dao;

import com.db.DBUtils;
import com.JavaBeans.User;
import com.dao.UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao{
	/**
     * ʵ����ӷ���--����û�
     */
	public int add(User u) {
        Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        try{
        	String sql = "insert into user(id,pwd,uname,time)values(?,?,?,?)";
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getId());
            ps.setString(2, u.getPwd());
            ps.setString(3,u.getUname());
            ps.setString(4,u.getTime());
            num=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
            return num;
        }
    }

    /*ɾ���û�*/
    public int delUser(User u){
    	Connection conn = null;
    	PreparedStatement ps = null;
    	int num=0;
    	try{
    		String sql = "DELETE FROM User WHERE id="+u.getId();
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            num=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
        	DBUtils.close(null, ps, conn);
            return num;
        }
    }

    //更新个人信息
    public int updateUser(User u){
    	Connection conn = null;
    	PreparedStatement ps = null;
    	int num=0;
    	try{
    		System.out.println(u.getId()+"a");
    		String	sql = "UPDATE user SET pwd=? ,uname=? WHERE id=?";
    		conn = DBUtils.getConnection();
    		ps = conn.prepareStatement(sql);
    		ps.setString(1, u.getPwd());
    		ps.setString(2,u.getUname());
    		ps.setString(3, u.getId());
    		ps.executeUpdate();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBUtils.close(null, ps, conn);
    		return num;
    	}
    }

    //�޸�����
    public int updatePwd(User u){
    	Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        String sql = "UPDATE user SET pwd=? WHERE id=?;";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,u.getPwd());
            ps.setString(2, u.getId());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
        }
        return num;
    	
    }
    
    //�鿴��������Ϣ
    public List<User> findAll(){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u=null;
        List<User> users = new ArrayList<User>();
        try{
        	String sql = "select * from user;";
        	conn = DBUtils.getConnection();
        	ps = conn.prepareStatement(sql);
        	rs = ps.executeQuery();
        	while(rs.next()){
        		u = new User();
        		u.setId(rs.getString("id"));
        		u.setPwd("******");
        		u.setUname(rs.getString("uname"));
        		u.setTime(rs.getString("time"));
        		users.add(u);
        	}
        }catch(Exception e){
        	e.printStackTrace();
        }finally{
        	DBUtils.close(rs,ps,conn);
        }
        return users;  
    }

    //�鿴������Ϣ
    public User findById(String id){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = new User();
        try{
        	String sql = "select id,pwd,uname,time from user where id="+id+";";	
        	conn = DBUtils.getConnection();
        	ps = conn.prepareStatement(sql);
        	rs = ps.executeQuery();
        	while(rs.next()){
        		u.setId(rs.getString("id"));
        		u.setPwd(rs.getString("pwd"));
        		u.setUname(rs.getString("uname"));
        		u.setTime(rs.getString("time"));
        	}
        }catch(Exception e){
        	System.out.println("cc");
        	e.printStackTrace();
        }finally{
        	DBUtils.close(rs, ps, conn);
        }
        return u;
    }

    //��ȡ����Աuid
    public List<Integer> root(){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Integer> uids=new ArrayList<Integer>();
        int uid=0;
        String sql = "select uid from root";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                uid=rs.getInt("uid");
                uids.add(uid);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBUtils.close(rs, ps, conn);
        }
        return uids;
    }

}
