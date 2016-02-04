package com.mypackage.com;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
public class HomeBeans {

	@NotNull(message="The field are empty")
	private String fname, 
				   lname,
				   uname,
				   password,
				   cpassword;
	@NotNull
	@Size(min=0, max=10, message="The phone number should be between 0 to 10 digits")
	private String phno;
	@Email(message="The email is incorrect")
	private String email;
		
	public void setFname(String Fname){
		this.fname = Fname;
	}
	public String getFname(){
		return this.fname;
	}

	public void setLname(String Lname){
		this.lname = Lname;
	}
	public String getLname(){
		return this.lname;
	}

	public void setPhno(String Phno){
		this.phno = Phno;
	}
	public String getPhno(){
		return this.phno;
	}

	public void setEmail(String Email){
		this.email = Email;
	}
	public String getEmail(){
		return this.email;
	}

	public void setUname(String Uname){
		this.uname = Uname;
	}
	public String getUname(){
		return this.uname;
	}

	public void setPassword(String Password){
		this.password = Password;
	}
	public String getPassword(){
		return this.password;
	}

	public void setCpassword(String cPassword){
		this.cpassword = cPassword;
	}
	public String getCpassword(){
		return this.cpassword;
	}
	
	@Override
	public String toString() {
		return "Subscriber [fname=" + fname + ", lname=" + lname + ", phno=" + phno
				+ ", email=" + email
				+ ", uname=" + uname 
				+ ", password=" + password 
				+ ", cpassword=" + cpassword + "]";
	}
	
}