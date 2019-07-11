package com.dao;

import com.db.DBUtils;
import com.JavaBeans.Cart;
import com.JavaBeans.Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDaoImpl implements CartDao {

	/*移出购物车*/
    public int del(String id,String gid) {
        Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        String sql = "DELETE FROM cart WHERE id="+id+"and gid="+gid;
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            num=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
        }
        return num;
	}
    
    /*显示购物车所有商品*/
    public List<Cart> show(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Cart> carts = new ArrayList<Cart>();
        String sql="SELECT * FROM shopping.`shop"+id+"`";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Cart cart=new Cart();
                cart.setId(rs.getString("id"));
                cart.setGid(rs.getString("gid"));
                cart.setNum(rs.getInt("num"));
                cart.setIsCart(rs.getBoolean("isCart"));
                cart.setIsStar(rs.getBoolean("isStar"));
                carts.add(cart);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBUtils.close(rs, ps, conn);
        }
        return carts;
    }
    
    /*加入购物车*/
    public int add(Cart cart) {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "insert into cart(id,gid,num,isCart,isStar)values(?,?,?,?,?)";
        int num=0;
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,cart.getId());
            ps.setString(2,cart.getGid());
            ps.setInt(3,cart.getNum());
            ps.setBoolean(4,cart.isCart());
            ps.setBoolean(5,cart.isStar());
            num=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
            return num;
        }
    }
    
    /*购物车中查找*/
    public Cart find(String id,String gid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cart cart=new Cart();
        String sql="SELECT * FROM shopping.`shop"+id+"` WHERE gid="+gid+"";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                cart.setGid(rs.getString("gid"));
                cart.setIsCart(rs.getBoolean("isCart"));
                cart.setIsStar(rs.getBoolean("isStar"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtils.close(rs, ps, conn);
        }
        return cart;
    }
    
    /*更新购物车中商品状态*/
    public int update(String id, Cart cart) {
        Connection conn = null;
        PreparedStatement ps = null;
        int num=0;
        String sql = "UPDATE shop"+id+" SET isCart=?,isStar=?  WHERE gid=?;";
        try{
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setBoolean(1, cart.isCart());
            ps.setBoolean(2, cart.isStar());
            ps.setString(3,cart.getGid());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBUtils.close(null, ps, conn);
        }
        return num;
    }


}
