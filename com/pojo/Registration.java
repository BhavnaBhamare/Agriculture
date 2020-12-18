package com.pojo;

// Generated Oct 4, 2018 1:52:59 PM by Hibernate Tools 3.4.0.CR1

/**
 * Registration generated by hbm2java
 */
public class Registration implements java.io.Serializable {

	private Integer rid;
	private String username;
	private String email;
	private String passsword;
	private String confirmpassword;
	private String gender;
	private String registeras;
	private String address;
	private String phonenumber;
	private String mobilenumber;

	public Registration() {
	}

	public Registration(String username, String email, String passsword, String confirmpassword, String gender,
			String registeras, String address, String phonenumber, String mobilenumber) {
		this.username = username;
		this.email = email;
		this.passsword = passsword;
		this.confirmpassword = confirmpassword;
		this.gender = gender;
		this.registeras = registeras;
		this.address = address;
		this.phonenumber = phonenumber;
		this.mobilenumber = mobilenumber;
	}

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPasssword() {
		return this.passsword;
	}

	public void setPasssword(String passsword) {
		this.passsword = passsword;
	}

	public String getConfirmpassword() {
		return this.confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRegisteras() {
		return this.registeras;
	}

	public void setRegisteras(String registeras) {
		this.registeras = registeras;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhonenumber() {
		return this.phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getMobilenumber() {
		return this.mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

}
