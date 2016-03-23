package cn.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;
import cn.service.QuestionService;
import cn.service.TestPaperService;

public class TestPaperServlet extends BaseServlet {
	private TestPaperService testPaperService = new TestPaperService();
	public String findAll(HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("examList", testPaperService.findAll());
		return "f:/testPaper.jsp";
	}
	
}
