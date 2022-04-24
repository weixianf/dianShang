package com.rj.bd.framework.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Classroom entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Classroom implements java.io.Serializable {

	// Fields

	private String classId;
	private String className;
	private Set students = new HashSet(0);

	// Constructors

	/** default constructor */
	public Classroom() {
	}

	/** minimal constructor */
	public Classroom(String classId) {
		this.classId = classId;
	}

	/** full constructor */
	public Classroom(String classId, String className, Set students) {
		this.classId = classId;
		this.className = className;
		this.students = students;
	}

	// Property accessors

	public String getClassId() {
		return this.classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return this.className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

	@Override
	public String toString() {
		return "Classroom [classId=" + classId + ", className=" + className + "]";
	}




}