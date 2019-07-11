package com.dao;

import com.db.DBUtils;
import com.JavaBeans.Goods;
import com.dao.GoodsDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsDaoImpl implements GoodsDao{
	
	//通过商品id查找商品
    public Goods findByGid(String gid){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Goods goods= null;
        try{
        	String sql="SELECT gid,gname,spec,up,t1,t2,inum,sales FROM goods WHERE gid="+gid;
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
            	goods = new Goods();
            	goods.setGid(rs.getString("gid"));           
            	goods.setGname(rs.getString("gname"));
            	goods.setSpec(rs.getString("spec"));
            	goods.setUp(rs.getDouble("up"));           	
            	goods.setT1(rs.getString("t1"));
            	goods.setT2(rs.getString("t2"));
            	goods.setInum(rs.getInt("inum"));
            	goods.setInum(rs.getInt("sales"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(rs, ps, conn);
        }
        return goods;
    }
    
   //通过名字查找商品
    public Goods findByGname(String gname){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Goods goods= null;
        try{
    	String sql="SELECT gid,gname,spec,up,t1,t2,inum,sales FROM goods WHERE gname="+gname;
        conn = DBUtils.getConnection();
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        if(rs.next()){
        	goods = new Goods();
        	goods.setGid(rs.getString("gid"));
        	goods.setGname(rs.getString("gname"));
        	goods.setSpec(rs.getString("spec"));
        	goods.setUp(rs.getDouble("up"));       	
        	goods.setT1(rs.getString("t1"));
        	goods.setT2(rs.getString("t2"));
        	goods.setInum(rs.getInt("inum"));
        	goods.setInum(rs.getInt("sales"));
        }
    }catch(Exception e){
        e.printStackTrace();
    }finally{
        DBUtils.close(rs, ps, conn);
    }
    return goods;
    }

    //查找所有商品
    public List<Goods> findall(){
    	Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Goods> goods = new ArrayList<Goods>();
        Goods good=null;
        try{
        	String sql = "SELECT  * FROM goods;";
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
            	good = new Goods();
            	good.setGid(rs.getString("gid"));
            	good.setGname(rs.getString("gname"));
            	good.setSpec(rs.getString("spec"));
            	good.setUp(rs.getDouble("up"));
            	good.setT1(rs.getString("t1"));
            	good.setT2(rs.getString("t2"));
            	good.setInum(rs.getInt("inum"));
            	good.setInum(rs.getInt("sales"));
            	goods.add(good);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBUtils.close(rs, ps, conn);
            return goods;
        }
    }

    //增加商品
    public int addGoods(Goods goods){
    	 Connection conn = null;
         PreparedStatement ps = null;
         int num=0;
         try{
        	 String sql = "insert into goods(gid,gname,spec,up,t1,t2,inum,sales)values(?,?,?,?,?,?,?,?)";
             conn = DBUtils.getConnection();
             ps = conn.prepareStatement(sql);
             ps.setString(1, goods.getGid());
             ps.setString(2,goods.getGname());
             ps.setString(3,goods.getSpec());
             ps.setDouble(4, goods.getUp());
             ps.setString(5, goods.getT1());
             ps.setString(6, goods.getT2());
             ps.setInt(7, goods.getInum());
             ps.setInt(8, goods.getSales());
             num=ps.executeUpdate();
         }catch(SQLException e){
             e.printStackTrace();
         }finally{
             DBUtils.close(null, ps, conn);
             return num;
         }
    }

    //删除商品
    public int delGoods(String gid){
    	Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        try{
        	String sql = "DELETE FROM goods WHERE gid="+gid;
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

    //更新商品信息
    public int updateGoods(Goods goods){
    	Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        String sql = "UPDATE goods SET gname=? ,spec=? ,up=?,t1=?,t2=?,inum=?,sales=? WHERE gid=?;";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,goods.getGname());
            ps.setString(2,goods.getSpec());
            ps.setDouble(3, goods.getUp());
            ps.setString(4, goods.getT1());
            ps.setString(5, goods.getT2());
            ps.setInt(6, goods.getInum());
            ps.setInt(7, goods.getSales());
            ps.setString(8, goods.getGid());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
        }
        return num;
    }

	
	
}
