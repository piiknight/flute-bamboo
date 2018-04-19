package edu.vinaenter.util;

import java.text.SimpleDateFormat;

public class DateUtil {
	public static String month(String str) {
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		return sdf.format(str);
	}
}
