package cn.service;

import java.util.List;

import cn.dao.QuestionDao;
import cn.domain.Question;

public class QuestionService{
	private QuestionDao questionDao = new QuestionDao();
	
	public void add(Question q){
		questionDao.add(q);
	}
	
	public List<Question> findAll(){
		return questionDao.findAll();
	}
	
	public void edit(Question q){
		questionDao.edit(q);
	}

	public Question load(String q_id) {
		return questionDao.load(q_id);
	}
	
	public void delete(String q_id) {
		 questionDao.delete(q_id);
	}
}
