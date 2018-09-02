package com.decoblog.www.user.dao;

public class Encrypt {
	public String encode(String target) {
		String result = "";
		
		for (int i = 0; i < target.length(); i ++) {
			int intString = (int)(target.charAt(i));
			result += (char)(64 + ((intString * 23 - 34) % 26));
			result += (char)(48 + ((intString * 15 - 23) % 10));
			result += (char)(97 + ((intString * 8 - 18) % 26));
			result += (char)(64 + ((intString * 2 - 4) % 26));
			result += (char)(48 + ((intString * 5 - 3) % 10));
			result += (char)(97 + ((intString * 12 - 18) % 26));
		}
		
		return result;
	}
}
