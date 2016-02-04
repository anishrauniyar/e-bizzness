package com.mypackage.com;

import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

public class SessionBean {
	
	@NotNull(message="The username should not be null")
	private String username;
	
	@NotNull(message="The password should not be null")
	private String password;
	
	public void setUsername(String uname){
		this.username = uname;
	}
	public String getUsername(){
		return this.username;
	}
	public void setPassword(String pword){
		this.password = pword;
	}
	public String getPassword(){
		return this.password;
	}
}
