package com.adjtyh.demo11.entity;

public class LoginUser {

	public int uId ;
	public String uName ;
	public String uPassword ;
	public int uLevel;
	
	public String getuName() {
		return uName;
	}


	public void setuName(String uName) {
		this.uName = uName;
	}


	public String getuPassword() {
		return uPassword;
	}


	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}


	public int getuLevel() {
		return uLevel;
	}


	public void setuLevel(int uLevel) {
		this.uLevel = uLevel;
	}


	public int getuId() {
		return uId;
	}

	@Override
	public String toString() {
		return "uId=" + uId + ", uName=" + uName + ", uPassword=" + uPassword;
	}
	
}
