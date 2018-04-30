package com.tieusao.model;

public class BillDetail {
	private int did;
	private int id;
	private String name;
	private int quantity;
	private int price;
	private int saleoff;
	private int total;

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSaleoff() {
		return saleoff;
	}

	public void setSaleoff(int saleoff) {
		this.saleoff = saleoff;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public BillDetail(int did, int id, String name, int quantity, int price, int saleoff, int total) {
		super();
		this.did = did;
		this.id = id;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.saleoff = saleoff;
		this.total = total;
	}

	public BillDetail() {
		super();
	}

	@Override
	public String toString() {
		return "BillDetail [did=" + did + ", id=" + id + ", name=" + name + ", quantity=" + quantity + ", price="
				+ price + ", saleoff=" + saleoff + ", total=" + total + "]";
	}

}
