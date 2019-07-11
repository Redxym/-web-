package com.JavaBeans;

public class Goods {
	private String gid;
    private String gname;
    private String spec;
    private double up;
    private String t1;
    private String t2; 
    private int inum;
    private int sales;
    
    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }
    
    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }
    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public double getUp() {
        return up;
    }

    public void setUp(double up) {
        this.up = up;
    }

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public int getInum() {
        return inum;
    }

    public void setInum(int inum) {
        this.inum = inum;
    }
    public int getSales() {
        return sales;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }
    
    public Goods() {
        super();
    }
    
    public String toString() {
        return "Goods{" +
                "gid='" + gid + '\'' +
                ", gname='" + gname + '\'' +
                ", spec='" + spec + '\'' +
                ", up=" + up +
                ", t1='" + t1 + '\'' +
                ", t2='" + t2 + '\'' +
                ", inum=" + inum +
                ", sales=" + sales +
                '}';
    }
    
    public Goods(String gname, String spec, double up, String t1, String t2, int inum, int sales) {
        this.gname = gname;
        this.spec = spec;
        this.up = up;
        this.t1 = t1;
        this.t2 = t2;
        this.inum = inum;
        this.sales = sales;
    }
    
    public Goods(String gid, String gname, String spec, double up, String t1, String t2, int inum, int sales) {
    	this.gid = gid;
        this.gname = gname;
        this.spec = spec;
        this.up = up;
        this.t1 = t1;
        this.t2 = t2;
        this.inum = inum;
        this.sales = sales;
    }
    
}
