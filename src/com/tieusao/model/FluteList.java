package com.tieusao.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class FluteList {
	private int id_fl;
	@NotBlank
	@Size(min=6)
	private String name_fl;
	@NotBlank
	private String preview_text;
	@NotBlank
	private String detail_text;
	private String picture;

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

	public String getPreview_text() {
		return preview_text;
	}

	public void setPreview_text(String preview_text) {
		this.preview_text = preview_text;
	}

	public String getDetail_text() {
		return detail_text;
	}

	public void setDetail_text(String detail_text) {
		this.detail_text = detail_text;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public FluteList(int id_fl, String name_fl, String preview_text, String detail_text, String picture) {
		super();
		this.id_fl = id_fl;
		this.name_fl = name_fl;
		this.preview_text = preview_text;
		this.detail_text = detail_text;
		this.picture = picture;
	}

	public FluteList() {
		super();
	}

	@Override
	public String toString() {
		return "FluteList [id_fl=" + id_fl + ", name_fl=" + name_fl + ", preview_text=" + preview_text
				+ ", detail_text=" + detail_text + ", picture=" + picture + "]";
	}

}
