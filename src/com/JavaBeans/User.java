package com.JavaBeans;

public class User {
	private String id;
    private String pwd;
    private String uname;
    private String time;//�ϴε�¼ʱ��
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
    
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    public User() {
        super();
    }
    public User(String id) {
        this.id = id;
        this.pwd = null;
        this.uname=null;
        this.time=null;
    }
    public User(String id, String pwd, String uname) {
        this.id = id;
        this.pwd = pwd;
        this.uname = uname;
        this.time = null;
    }
    public User(String id, String pwd, String uname, String time) {
        this.id = id;
        this.pwd = pwd;
        this.time = time;
        if(uname.equals("")||uname==null)
            this.uname="asd";
        else
            this.uname = uname;
    }
    public String toString() {
        return "User{" +
                "id='" + id  + '\'' +
                ", pwd='" + pwd + '\'' +
                ", uname='" + uname + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
