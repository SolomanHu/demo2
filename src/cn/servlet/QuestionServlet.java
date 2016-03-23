package cn.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.domain.Question;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;
import cn.service.QuestionService;

public class QuestionServlet extends BaseServlet{
	private QuestionService questionService = new QuestionService();
	
	public String add(HttpServletRequest request, HttpServletResponse response){
		
		Question q = CommonUtils.toBean(request.getParameterMap(), Question.class);
		//q.setQ_id(CommonUtils.uuid());
		questionService.add(q);
		request.setAttribute("msg","恭喜,添加题目成功");
		
		return "f:/msg.jsp";
	}
	
	public String findAll(HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("questionList", questionService.findAll());
		return "f:/list.jsp";
	}
	
	public String test(HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("questionList", questionService.findAll());
		return "f:/test.jsp";
	}
	
	public String preEdit(HttpServletRequest request, HttpServletResponse response){
		String q_id = request.getParameter("q_id");
		Question ques = questionService.load(q_id);
		request.setAttribute("ques", ques);
		return "f:/edit.jsp";
	}
	
	public String edit(HttpServletRequest request, HttpServletResponse response){
		Question q = CommonUtils.toBean(request.getParameterMap(), Question.class);
		questionService.edit(q);
		request.setAttribute("msg", "恭喜，编辑题目成功！");
		return "f:/msg.jsp";
	}

	public String delete(HttpServletRequest request, HttpServletResponse response){
		String q_id = request.getParameter("q_id");
	    questionService.delete(q_id);
		request.setAttribute("msg", "恭喜，删除题目成功！");
		return "f:/msg.jsp";
		
	}
	public String result(HttpServletRequest request, HttpServletResponse response){
		int l = Integer.valueOf(request.getParameter("length"));
		double score = 0;
		for(int i=0;i<l;i++){
			String id =request.getParameter("q_id"+i);
		String selectQuestion =  request.getParameter("question_"+id);
		Question question = questionService.load(id);
		if(question.getAnswer().equals(selectQuestion)){
			score+= question.getScore();
		}
		}
		request.setAttribute("score", score);
		return "f:/score.jsp";
	}
	
}

