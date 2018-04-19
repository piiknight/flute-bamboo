package edu.vinaenter.model;

import java.sql.Timestamp;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

public class News {
	private int lid;
	private int cid;
	private int count_views;
	private double area;
	private Timestamp date_create;
	@NotBlank
	private String lname;
	private String cname;
	@NotBlank
	private String description;
	private String picture;
	@NotBlank
	private String address;

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getCount_views() {
		return count_views;
	}

	public void setCount_views(int count_views) {
		this.count_views = count_views;
	}

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public Timestamp getDate_create() {
		return date_create;
	}

	public void setDate_create(Timestamp date_create) {
		this.date_create = date_create;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public News(int lid, int cid, int count_views, double area, Timestamp date_create, String lname, String cname,
			String description, String picture, String address) {
		super();
		this.lid = lid;
		this.cid = cid;
		this.count_views = count_views;
		this.area = area;
		this.date_create = date_create;
		this.lname = lname;
		this.cname = cname;
		this.description = description;
		this.picture = picture;
		this.address = address;
	}

	public News() {
		super();
	}

}
