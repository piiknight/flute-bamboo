package com.tieusao.model;

public class CirclePayment {
	private int pid;
	private String pname;
	private int count;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public CirclePayment(int pid, String pname, int count) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.count = count;
	}

	public CirclePayment() {
		super();
	}

}
