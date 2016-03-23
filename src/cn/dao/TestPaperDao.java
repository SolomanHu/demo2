package cn.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.domain.Question;
import cn.domain.TestPaper;
import cn.itcast.jdbc.TxQueryRunner;

public class TestPaperDao {
		private QueryRunner qr = new TxQueryRunner();
		public List<TestPaper> findAll(){
			try{
				String sql = "SELECT q.description,q.chooseA,"
					+"q.chooseB,q.chooseC,q.chooseD,q.score,e.e_score,"
					+"e.long_time,e.`name` FROM exam_question WHERE q_id = e_id;";
			return qr.query(sql, new BeanListHandler<TestPaper>(TestPaper.class));
			}catch(SQLException e){
				throw new RuntimeException(e);
			}
		}
}

