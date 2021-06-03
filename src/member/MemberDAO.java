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

	public int login(String id, String pw) {
		
		int result = -1;
		
		// -1로그인 실패   -------  1로그인 성공
		try {
			conn = getConnection();
			
			sql = "select * from member where id = ?";
			
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, id);
			
			res = pst.executeQuery();
			
			if (res.next()) {
				if(pw.equals(res.getString("pw"))){
					result = 1;
				}
			}
		} catch (Exception e) {
			System.out.println("MemberDAO : login(로그인 작업)에서 에러" + e);
		} finally {
			closeAll(conn, pst, res);
		}
		return result;
	}
	
	//권한 가져오기 
	public String getAuth(String id){
		String auth = null;
		
		try {
			conn = getConnection();
			
			sql = "select auth from power where id = ?";
			
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, id);
			res = pst.executeQuery();
			
			if (res.next()) {
				auth = res.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("MemberDAO : getAuth(권한 얻기 작업)에서 에러" + e);
		} finally {
			closeAll(conn, pst, res);
		}
		return auth;
	}
	
	public int checkId(String id){
		int check = 1;
		
		try {
			conn = getConnection();
			
			sql = "select * from power where id = ?";
			
			pst  = conn.prepareStatement(sql);
			pst.setString(1, id);
			
			res = pst.executeQuery();
			
			if (res.next()) {
				check--;
			}
		} catch (Exception e) {
			System.out.println("MemberDAO : checkId(중복아이디 검사 오류)"+e);
		}finally{
			closeAll(conn, pst, res);
		}
		return check;
	}
	
	
	
}
