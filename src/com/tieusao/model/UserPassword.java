package com.tieusao.model;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class UserPassword {
	private boolean validPass;
	private String repass;
	private String oldpassword;
	private int id;
	@NotBlank
	@Size(min = 3, max = 20)
	private String password;

	@AssertTrue
	public boolean isValidPass() {
		try {
			return password.equals(repass);
		} catch (Exception e) {
			return false;
		}
	}

	public void setValidPass(boolean validPass) {
		this.validPass = validPass;
	}

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public String getOldpassword() {
		return oldpassword;
	}

	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserPassword(boolean validPass, String repass, String oldpassword, int id, String password) {
		super();
		this.validPass = validPass;
		this.repass = repass;
		this.oldpassword = oldpassword;
		this.id = id;
		this.password = password;
	}

	public UserPassword() {
		super();
	}

	@Override
	public String toString() {
		return "UserPassword [validPass=" + validPass + ", repass=" + repass + ", oldpassword=" + oldpassword + ", id="
				+ id + ", password=" + password + "]";
	}

}
