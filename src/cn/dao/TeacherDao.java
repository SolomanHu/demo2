package cn.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.domain.Student;
import cn.domain.Teacher;
import cn.itcast.jdbc.TxQueryRunner;


public class TeacherDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public Teacher findByUsername(String username){
		try{
		String sql = "select * from teacher where t_name=?";
		return qr.query(sql, new BeanHandler<Teacher>(Teacher.class), username);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Teacher findByPassword(String password){
		try{
		String sql = "select * from teacher where t_password=?";
		return qr.query(sql, new BeanHandler<Teacher>(Teacher.class), password);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
