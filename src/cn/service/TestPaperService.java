package cn.service;

import java.util.List;

import cn.dao.TestPaperDao;
import cn.domain.Question;
import cn.domain.TestPaper;

public class TestPaperService {
	TestPaperDao testPaperDao = new TestPaperDao();
	public List<TestPaper> findAll(){
		return testPaperDao.findAll();
	}
}
