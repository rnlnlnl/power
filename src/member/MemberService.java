package member;

public class MemberService {

	MemberDAO mDAO;
	
	public MemberService(){
		//객체 생성시 자동으로 dao 객채 생성
		mDAO = new MemberDAO();
	}
	
	public int login(String id, String pw){
		int result = mDAO.login(id, pw);
		
		return result;
	}
	
	public String getAuth(String id){
		String auth = mDAO.getAuth(id);
		return auth;
	}
	
	public int checkId(String id){
		int result = mDAO.checkId(id);
		return result;
	}
	

	

}
