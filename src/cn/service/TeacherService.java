package cn.service;


import cn.dao.TeacherDao;
import cn.domain.Student;
import cn.domain.Teacher;

public class TeacherService {
	private TeacherDao teacherDao = new TeacherDao();
	public Teacher login(Teacher tform) throws UserException{
		Teacher teacher = teacherDao.findByUsername(tform.getT_name());
		if(teacher == null) throw new UserException("用户名不存在!");
		if(!teacher.getT_password().equals(tform.getT_password()))
			throw new UserException("密码错误！");
		return teacher;
	}
	
}
