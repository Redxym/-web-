package com.JavaBeans;

public class Orders {
	private String oid;//����id
	private String id;//�û�id
	private String gid;//��Ʒid
    private int gnum; //��Ʒ����
    private String succ_time;//�����ɳ���ʱ��
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public String getSucc_time() {
		return succ_time;
	}
	public void setSucc_time(String succ_time) {
		this.succ_time = succ_time;
	}
    
	public String toString() {
        return "Orders{" +
        		"oid='" + oid + '\'' +
                ", id='" + id + '\'' +
                ", gid='" + gid + '\'' +
                ", gnum=" + gnum +
                ", succ_time='" + succ_time + '\'' +
                '}';
    }
	public Orders() {
        super();
    }
	
	public Orders(String oid, String id, String gid, int gnum, String succ_time) {
    	this.oid = oid;
        this.id = id;
        this.gid = gid;
        this.gnum = gnum;
        this.succ_time = succ_time;
    }
	
}
