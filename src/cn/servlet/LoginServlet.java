package cn.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.domain.Student;
import cn.domain.Teacher;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;
import cn.service.QuestionService;
import cn.service.StudentService;
import cn.service.TeacherService;
import cn.service.UserException;



public class LoginServlet extends BaseServlet{

	private StudentService studentService = new StudentService();
	private QuestionService questionService = new QuestionService();
	private TeacherService teacherService = new TeacherService();
	
	public String login(HttpServletRequest request, HttpServletResponse response){
		String user = request.getParameter("user");
		String url ="f:/login.jsp";
		if(user.equals("student")){
		Student form = CommonUtils.toBean(request.getParameterMap(), Student.class); 
			try{
				Student student = studentService.login(form);
				request.getSession().setAttribute("session_student", student);
				url = "f:/testIntro.jsp";
			}catch (UserException e){
				request.setAttribute("msg", e.getMessage());
				request.setAttribute("form", form);
				return "f:/login.jsp";
			}
		}
		else{
			if(user.equals("teacher")){
				Teacher tform = CommonUtils.toBean(request.getParameterMap(), Teacher.class); 
				try {
					Teacher teacher = teacherService.login(tform);
					request.getSession().setAttribute("session_teacher", teacher);
					url = "f:/top.jsp";
				} catch (UserException e) {
					request.setAttribute("msg", e.getMessage());
					request.setAttribute("form", tform);
					return "f:/login.jsp";
				}
				
			}
		}
		
		return url;
		
	}
	
		
	
	public String findAll(HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("questionList", questionService.findAll());
		return "f:/test.jsp";
	}
	
	}

