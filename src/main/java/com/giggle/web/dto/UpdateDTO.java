package com.giggle.web.dto;

public class UpdateDTO {
	private int user_num;
	private String membership_type;
	private String membership_signup;
	private String membership_expire;
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getMembership_type() {
		return membership_type;
	}
	public void setMembership_type(String membership_type) {
		this.membership_type = membership_type;
	}
	public String getMembership_signup() {
		return membership_signup;
	}
	public void setMembership_signup(String membership_signup) {
		this.membership_signup = membership_signup;
	}
	public String getMembership_expire() {
		return membership_expire;
	}
	public void setMembership_expire(String membership_expire) {
		this.membership_expire = membership_expire;
	}
	
	
	

}
