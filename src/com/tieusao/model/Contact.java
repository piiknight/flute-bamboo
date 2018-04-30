package com.tieusao.model;

public class Contact {
	private int id;
	private String name;
	private String text;
	private String phone;
	private String email;

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

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Contact(int id, String name, String text, String phone, String email) {
		super();
		this.id = id;
		this.name = name;
		this.text = text;
		this.phone = phone;
		this.email = email;
	}

	public Contact() {
		super();
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", text=" + text + ", phone=" + phone + ", email=" + email
				+ "]";
	}

}
