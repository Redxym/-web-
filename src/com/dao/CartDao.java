package com.dao;

import java.util.List;

import com.JavaBeans.Cart;

public interface CartDao {

    /*移出购物车*/
    public int del(String id, String gid);

    /*显示购物车所有商品*/
    public List<Cart> show(String id);

    /*加入购物车ﳵ*/
    public int add(Cart cart);

    /*购物车中查找*/
    public Cart find(String id,String gid);

    /*更新购物车中商品状态*/
    public int update(String id,Cart cart);
}
