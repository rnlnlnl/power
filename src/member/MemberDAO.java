package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	// 커넥션,프리페어드스테이트먼트,리설트셋 미리 선언해뒀습니다
	// 아래의 이름으로 사용해 주세요
	
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet res = null;
	DataSource ds = null;

	String sql;

	// 커넥션풀 얻는 메소드
	private Connection getConnection() throws Exception{
		Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/power");
		
		// 커넥션풀 얻기
		conn = ds.getConnection();
		return conn;
	}// getConnection()메서드 끝
	
	//자원반납 메서드
	private void closeAll(Connection conn, PreparedStatement pst, ResultSet res){
		try {
			if (conn != null) {
				conn.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (res != null) {
				res.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO : closeAll(자원 반납 작업)에서 에러" + e);
		}
	}// colseAll()메서드끝
	
	
	
	
	
	
	
}
