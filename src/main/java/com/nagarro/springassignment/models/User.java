package com.nagarro.springassignment.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usertable")
public class User {
	@Id
	int Id;
	@Column(name = "username")
	String username;
	@Column(name = "password")
	String password;

	public User() {
	}

	public User(String username, String password) {

		this.username = username;
		this.password = password;
	}

	public String getusername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}
}
