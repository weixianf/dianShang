package com.rj.bd.framework.entity;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Student implements java.io.Serializable {

	// Fields

	private String sid;
	private Classroom classroom;
	private String name;
	private String sex;

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String sid) {
		this.sid = sid;
	}

	/** full constructor */
	public Student(String sid, Classroom classroom, String name, String sex) {
		this.sid = sid;
		this.classroom = classroom;
		this.name = name;
		this.sex = sex;
	}

	
	
	
	
	
	
	// Property accessors

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", classroom=" + classroom + ", name=" + name + ", sex=" + sex + "]";
	}

	public String getSid() {
		return this.sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public Classroom getClassroom() {
		return this.classroom;
	}

	public void setClassroom(Classroom classroom) {
		this.classroom = classroom;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}



}