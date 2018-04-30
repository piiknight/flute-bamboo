package com.tieusao.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Code {
	private int cid;
	@NotBlank
	@Size(min=6)
	private String cname;
	@Min(1)
	private int quantity;
	private int percent;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public Code(int cid, String cname, int quantity, int percent) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.quantity = quantity;
		this.percent = percent;
	}
	public Code() {
		super();
	}
	
}
