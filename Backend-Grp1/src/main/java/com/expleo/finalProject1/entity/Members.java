package com.expleo.finalProject1.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Members {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int serialNum;
	private String name;
	private String age;
	private String gender;
	private String mobile;
	private String groupId;
	
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	
	@Override
	public String toString() {
		return "Members [serialNum=" + serialNum + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", mobile=" + mobile + "]";
	}
	public Members() {
		
	}
	public Members(String name, String age, String gender, String mobile) {
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.mobile = mobile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}
