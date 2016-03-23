package cn.service;

import cn.dao.StudentDao;
import cn.domain.Student;


public class StudentService {
	private StudentDao studentDao = new StudentDao();
	
	public Student login(Student form) throws UserException{
		Student student = studentDao.findByUsername(form.getS_name());
		if(student == null) throw new UserException("�û���������!");
		if(!student.getS_password().equals(form.getS_password()))
			throw new UserException("�������");
		return student;
	}
}
