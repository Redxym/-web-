package com.dao;

import java.util.List;

import com.JavaBeans.Goods;

//��Ʒ��������ӿ�
public interface GoodsDao {
	
	//����Ʒ��Ų���
    public Goods findByGid(String gid);
    
  //通过名字查找商品
    public Goods findByGname(String gname);

    //ȫ����Ʒ
    public List<Goods> findall();

    //�����Ʒ
    public int addGoods(Goods goods);

    //ɾ����Ʒ
    public int delGoods(String gid);

    //������Ʒ
    public int updateGoods(Goods goods);
}
