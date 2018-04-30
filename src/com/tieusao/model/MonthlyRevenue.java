package com.tieusao.model;

public class MonthlyRevenue {
	private String month;
	private String total;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "MonthlyRevenue [month=" + month + ", total=" + total + "]";
	}

	public MonthlyRevenue(String month, String total) {
		super();
		this.month = month;
		this.total = total;
	}

	public MonthlyRevenue() {
		super();
	}

}
