package com.tieusao.model;

import java.sql.Timestamp;

public class Bill {
	private int bid;
	private int uid;
	private int cid;
	private int money;
	private String fullname;
	private String address;
	private String pname;
	private int status;
	private Timestamp date_create;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Timestamp getDate_create() {
		return date_create;
	}

	public void setDate_create(Timestamp date_create) {
		this.date_create = date_create;
	}

	public Bill(int bid, int uid, int cid, int money, String fullname, String address, String pname, int status,
			Timestamp date_create) {
		super();
		this.bid = bid;
		this.uid = uid;
		this.cid = cid;
		this.money = money;
		this.fullname = fullname;
		this.address = address;
		this.pname = pname;
		this.status = status;
		this.date_create = date_create;
	}

	public Bill() {
		super();
	}

	@Override
	public String toString() {
		return "Bill [bid=" + bid + ", uid=" + uid + ", cid=" + cid + ", money=" + money + ", fullname=" + fullname
				+ ", address=" + address + ", pname=" + pname + ", status=" + status + ", date_create=" + date_create
				+ "]";
	}

}
