package com.adjtyh.demo11.entity;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class UserMaster {

	@NotEmpty(message="ID不能为空！")
	private String um_login_id;
	@Length(min=1,max=20,message="名字太长！")
	private String um_name;
	@Pattern(regexp="[0-9a-zA-Z]{3,20}",message="密码必须是字母或者数字，长度在3位-20位!")
	private String um_password;
	public String getUm_login_id() {
		return um_login_id;
	}
	public void setUm_login_id(String um_login_id) {
		this.um_login_id = um_login_id;
	}
	public String getUm_name() {
		return um_name;
	}
	public void setUm_name(String um_name) {
		this.um_name = um_name;
	}
	public String getUm_password() {
		return um_password;
	}
	public void setUm_password(String um_password) {
		this.um_password = um_password;
	}
	
	public String toString(){
		return um_login_id+"  "+um_name+"  "+um_password;
		
	}
}
