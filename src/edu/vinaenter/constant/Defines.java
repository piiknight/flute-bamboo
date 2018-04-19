package edu.vinaenter.constant;

import java.util.HashMap;

public class Defines {

	public static final String SUCCSESS = "Xử lí thành công!";
	public static final String ERROR = "Có lỗi trong quá trình xử lý!";
	public static final String BAD_REQUEST = "Không có quyền xóa admin";
	
	public static final int ROW_COUNT_AMIN = 5;
	public static final int GROUP_PAGE_AMIN = 5;
	public static final String DIR_UPLOAD = "files";
	public static final int CHAR_CUT_DESCRIPTION = 80;

	public String urlPublic;
	public String urlAdmin;
	public String superAdmin;

	public String getSuperAdmin() {
		return superAdmin;
	}

	public void setSuperAdmin(String superAdmin) {
		this.superAdmin = superAdmin;
	}

	public String getUrlPublic() {
		return urlPublic;
	}

	public void setUrlPublic(String urlPublic) {
		this.urlPublic = urlPublic;
	}

	public String getUrlAdmin() {
		return urlAdmin;
	}

	public void setUrlAdmin(String urlAdmin) {
		this.urlAdmin = urlAdmin;
	}

	public Defines(String urlPublic, String urlAdmin) {
		super();
		this.urlPublic = urlPublic;
		this.urlAdmin = urlAdmin;
	}

	public Defines() {
		super();
	}

}
