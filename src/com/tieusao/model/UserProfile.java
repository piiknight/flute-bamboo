package com.tieusao.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class UserProfile {

	private int id;
	@NotBlank
	@Size(min = 3, max = 20)
	private String username;
	@NotBlank
	@Size(min = 3, max = 20)
	private String fullname;
	@NotBlank
	@Pattern(regexp = "^\\d+$")
	@Size(min = 9, max = 15)
	private String phone;
	@NotBlank
	@Email
	private String email;
	private int enable;
	private String name;
	private String address;
	private int role_id;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	public int getEnable() {
		return enable;
	}

	public void setEnable(int enable) {
		this.enable = enable;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public UserProfile(int id, String username, String fullname, String phone, String email, int enable, String name,
			String address, int role_id) {
		super();
		this.id = id;
		this.username = username;
		this.fullname = fullname;
		this.phone = phone;
		this.email = email;
		this.enable = enable;
		this.name = name;
		this.address = address;
		this.role_id = role_id;
	}

	public UserProfile() {
		super();
	}

	@Override
	public String toString() {
		return "UserFrofile [id=" + id + ", username=" + username + ", fullname=" + fullname + ", phone=" + phone
				+ ", email=" + email + ", enable=" + enable + ", name=" + name + ", role_id=" + role_id + "]";
	}

}
