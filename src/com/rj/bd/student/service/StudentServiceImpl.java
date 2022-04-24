package com.rj.bd.student.service;

import java.util.List;
import com.rj.bd.framework.dao.IDao;
import com.rj.bd.framework.entity.Student;

/**
 * @desc   Student模块的M层的实现类
 * @author WYH
 * @time   2019-04-17
 */
public class StudentServiceImpl implements IStudentService {

public IDao  dao;  //待注入
	
	@Override
	public List<?> queryStudentAll() {
		
		return dao.query("   from com.rj.bd.framework.entity.Student ");
	}

	@Override
	public void save(Student student) {
		dao.save(student);
	}
	
	@Override
	public List<?> queryClassId() {
		return dao.query("  from com.rj.bd.framework.entity.Classroom");
	}

	@Override
	public Student queryOne(String id) {
		return (Student) dao.queryById(Student.class, id);
	}
	
	@Override
	public void update(Student student) {
		dao.update(student);
	}

	@Override
	public void deleteOne(Student student) {
		dao.delete(student);
	}


	public IDao getDao() {
		return dao;
	}

	public void setDao(IDao dao) {
		this.dao = dao;
	}


	
}
