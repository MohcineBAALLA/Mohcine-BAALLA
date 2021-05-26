package com.util.db;
public class Student {

	int id;
	String login;
	String password;
	String etat;

	public Student() {
	}

	public Student(String login, String password, String etat) {
		super();
		this.login = login;
		this.password = password;
		this.etat = etat;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", login=" + login + ", password=" + password + ", etat=" + etat + "]";
	}

}
