package cn.dao;

import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import cn.domain.Student;
import cn.itcast.jdbc.TxQueryRunner;

public class StudentDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public Student findByUsername(String username){
		try{
		String sql = "select * from student where s_name=?";
		return qr.query(sql, new BeanHandler<Student>(Student.class), username);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Student findByPassword(String password){
		try{
		String sql = "select * from student where s_password=?";
		return qr.query(sql, new BeanHandler<Student>(Student.class), password);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
