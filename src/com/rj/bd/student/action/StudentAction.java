package com.rj.bd.student.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.rj.bd.framework.entity.Student;
import com.rj.bd.student.service.IStudentService;

public class StudentAction {

	public IStudentService studentService;
	public Student student;
	public List<?> list;	
	public String id;
	public String[] ids;
	public Map<String,Object> map;
	
	public String query() throws JsonGenerationException, JsonMappingException, IOException{
		list=studentService.queryStudentAll();
		return "query";
	}
	public String addPage()
	{
		list= studentService.queryClassId();
//		System.out.println("------------------list------------"+list.get(0));
		return "addpage";
	}
	public String add()
	{
		studentService.save(student);
		
		return "requery";
	}
	public String editPage()
	{
		list= studentService.queryClassId();
		student = studentService.queryOne(id);
		System.out.println("student------->"+student.toString());
		return "editpage";
	}
	public String edit()
	{
		studentService.update(student);
		return "requery";
	}
	public String delete()
	{
		student = studentService.queryOne(id);
		studentService.deleteOne(student);
		return "requery";
	}
	
	
	
	public IStudentService getStudentService() {
		return studentService;
	}
	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String[] getIds() {
		return ids;
	}
	public void setIds(String[] ids) {
		this.ids = ids;
	}
	public List<?> getList() {
		return list;
	}
	public void setList(List<?> list) {
		this.list = list;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
	
}
