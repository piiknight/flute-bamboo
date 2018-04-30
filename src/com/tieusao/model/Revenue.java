package com.tieusao.model;

public class Revenue {
	private int revenue;
	private int upload;

	public int getRevenue() {
		return revenue;
	}

	public void setRevenue(int revenue) {
		this.revenue = revenue;
	}

	public int getUpload() {
		return upload;
	}

	public void setUpload(int upload) {
		this.upload = upload;
	}

	public Revenue(int revenue, int upload) {
		super();
		this.revenue = revenue;
		this.upload = upload;
	}

	public Revenue() {
		super();
	}

}
