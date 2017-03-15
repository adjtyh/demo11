package com.adjtyh.demo11.entity;

public class TestUser {

	private int uId ;
	private String userName ;
	private int userPassword ;
	private int userLevel;
	
	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public int getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(int userPassword) {
		this.userPassword = userPassword;
	}


	public int getUserLevel() {
		return userLevel;
	}


	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}


	public int getuId() {
		return uId;
	}




	@Override
	public String toString() {
		return "uId=" + uId + ", userName=" + userName + ", userPassword=" + userPassword;
	}
	
}
