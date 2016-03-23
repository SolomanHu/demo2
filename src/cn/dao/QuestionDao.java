package cn.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.domain.Question;
import cn.itcast.jdbc.TxQueryRunner;

public class QuestionDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public void add(Question q){
		try{
	String sql = "INSERT INTO question (description,score,chooseA,chooseB,chooseC,chooseD,answer) VALUES(?,?,?,?,?,?,?)";
	Object[] params = {q.getDescription(),q.getScore(),q.getChooseA(),q.getChooseB(),q.getChooseC(),q.getChooseD(),q.getAnswer()}; 
	qr.update(sql, params);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public List<Question> findAll(){
		try{
		String sql = "SELECT * FROM question";
		return qr.query(sql, new BeanListHandler<Question>(Question.class));
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}

	public void edit(Question q){
		
		try {
			String sql = "update question set description=?, score=?, chooseA=?, chooseB=?, chooseC=?, chooseD=?,answer=? where q_id=?";
			Object [] params = {q.getDescription(),q.getScore(),q.getChooseA(),q.getChooseB(),q.getChooseC(),q.getChooseD(),q.getAnswer(),q.getQ_id()};
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public Question load(String q_id) {
		try {
			String sql = "select * from question where q_id=?";
			return qr.query(sql, new BeanHandler<Question>(Question.class), q_id);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void delete(String q_id) {
		try {
			String sql = "delete from question where q_id=?";
			qr.update(sql, q_id);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
}
