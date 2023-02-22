package com.cetpa;

public class Student 
{
	private int sid;
	private String firstname;
	private String lastname;
	private int age;
	private String address;

	public Student() {
	}

	public Student(int sid, String firstname, String lastname,String address, int age) {

		this.sid = sid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.address = address;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String toString() {
		return "Student [sid=" + sid + ", firstname=" + firstname + ", lastname=" + lastname + ", age=" + age
				+ ", address=" + address + "]";
	}

}

