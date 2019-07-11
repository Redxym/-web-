package com.JavaBeans;

public class Cart {
	private String id;
	private String gid;
	private int num;
	private boolean isCart;
    private boolean isStar;

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
    public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

    public boolean isCart() {
        return isCart;
    }

    public void setIsCart(boolean isCart) {
        this.isCart = isCart;
    }

    public boolean isStar() {
        return isStar;
    }

    public void setIsStar(boolean isStar) {
        this.isStar = isStar;
    }

    public Cart(){
        super();
    }

    @Override
    public String toString() {
        return "Cart{" +
        		"id='" + id  + '\'' +
                "gid='" + gid + '\'' +
                "gid='" + num  +
                ", isCart=" + isCart +
                ", isStar=" + isStar +
                '}';
    }
    public Cart(String id, String gid, int num) {
        this.id = id;
        this.gid = gid;
        this.num = num;
        this.isCart = false;
        this.isStar = false;
    }
    public Cart(String id, String gid, int num,boolean isCart,boolean isStart) {
        this.id = id;
        this.gid = gid;
        this.num = num;
        this.isCart = isCart;
        this.isStar = isStar;
    }
}
