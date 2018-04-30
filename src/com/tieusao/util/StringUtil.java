package com.tieusao.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class StringUtil {
	
	// encode md5
	public String md5(String str){
		MessageDigest md;
		String result = "";
		try {
			md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			BigInteger bi = new BigInteger(1, md.digest());
			
			result = bi.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;
	}
	// encode bcrypt etc
	
	public String cutDescription(String str, int position) {
		try {
			return str.substring(0, str.indexOf(' ', position)) + " ...";
		} catch (Exception e) {
			return str;
		}
	}
}
