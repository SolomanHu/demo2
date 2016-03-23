package cn.service;

import cn.dao.StudentDao;
import cn.domain.Student;


public class StudentService {
	private StudentDao studentDao = new StudentDao();
	
	public Student login(Student form) throws UserException{
		Student student = studentDao.findByUsername(form.getS_name());
		if(student == null) throw new UserException("用户名不存在!");
		if(!student.getS_password().equals(form.getS_password()))
			throw new UserException("密码错误！");
		return student;
	}
}
