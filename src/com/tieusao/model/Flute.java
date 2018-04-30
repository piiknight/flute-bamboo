package com.tieusao.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Flute {
	private int id;
	@NotBlank
	@Size(min = 6)
	private String name;
	@NotBlank
	private String preview;
	@NotBlank
	private String detail;
	@Min(0)
	private int price;
	@Min(0)
	@Max(100)
	private int saleoff;
	private String picture;
	private int id_fl;
	private String name_fl;

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

	public String getPreview() {
		return preview;
	}

	public void setPreview(String preview) {
		this.preview = preview;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
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

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getId_fl() {
		return id_fl;
	}

	public void setId_fl(int id_fl) {
		this.id_fl = id_fl;
	}

	public String getName_fl() {
		return name_fl;
	}

	public void setName_fl(String name_fl) {
		this.name_fl = name_fl;
	}

	public Flute(int id, String name, String preview, String detail, int price, int saleoff, String picture, int id_fl,
			String name_fl) {
		super();
		this.id = id;
		this.name = name;
		this.preview = preview;
		this.detail = detail;
		this.price = price;
		this.saleoff = saleoff;
		this.picture = picture;
		this.id_fl = id_fl;
		this.name_fl = name_fl;
	}

	public Flute() {
		super();
	}

	@Override
	public String toString() {
		return "Flute [id=" + id + ", name=" + name + ", preview=" + preview + ", detail=" + detail + ", price=" + price
				+ ", saleoff=" + saleoff + ", picture=" + picture + ", id_fl=" + id_fl + ", name_fl=" + name_fl + "]";
	}

}
