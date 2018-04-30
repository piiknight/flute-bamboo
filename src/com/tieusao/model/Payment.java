package com.tieusao.model;

import org.hibernate.validator.constraints.NotBlank;

public class Payment {
	private int pid;
	@NotBlank
	private String pname;

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

	public Payment(int pid, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
	}

	public Payment() {
		super();
	}

}
