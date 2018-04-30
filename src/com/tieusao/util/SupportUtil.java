package com.tieusao.util;

import java.util.ArrayList;

public class SupportUtil {
	public ArrayList<Integer> saleoff(){
		ArrayList<Integer> list = new ArrayList<>();
		for (int i = 0; i < 100; i += 5) {
			list.add(Integer.valueOf(i));
		}
		return list;
	}
}
