package com.dao;

import com.JavaBeans.User;
import java.util.List;

//�û������ӿڶ���
public interface UserDao {
	 //����û�
    public int add(User u);

    /*ɾ���û�*/
    public int delUser(User u);

    //�޸���Ϣ
    public int updateUser(User u);

    //�޸�����
    public int updatePwd(User u);
    
  //�鿴��������Ϣ
    public List<User> findAll();
    
    //�鿴������Ϣ
    public User findById(String id);

    //��ȡ����Աuid
    public List<Integer> root();
}
