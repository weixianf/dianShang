package com.rj.bd.student.service;

import java.util.List;
import com.rj.bd.framework.entity.Student;

/**
 * @desc   Student模块的M层的接口
 * @author WYH
 * @time   2019-04-17
 */
public interface IStudentService {

	List<?> queryStudentAll();

	void save(Student student);
	
	List<?> queryClassId();

	Student queryOne(String id);

	void update(Student student);

	void deleteOne(Student student);

}
