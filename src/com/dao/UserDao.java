package com.dao;

import com.JavaBeans.User;
import java.util.List;

//用户操作接口定义
public interface UserDao {
	 //添加用户
    public int add(User u);

    /*删除用户*/
    public int delUser(User u);

    //修改信息
    public int updateUser(User u);

    //修改密码
    public int updatePwd(User u);
    
  //查看所有人信息
    public List<User> findAll();
    
    //查看个人信息
    public User findById(String id);

    //获取管理员uid
    public List<Integer> root();
}
