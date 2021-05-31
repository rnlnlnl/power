package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//컨텍스트 패스가 /member 로 시작하는 모든 요청은 이 서블릿에서 처리합니다
@WebServlet("/member/*")
public class MemberController extends HttpServlet{

	MemberDAO mDAO;
	
	// init()메소드에서 MemberDAO를 초기화함
	@Override
	public void init() throws ServletException{
		mDAO = new MemberDAO();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doIt(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doIt(request, response);
	}
	
	private void doIt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 패치
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 뷰페이지(요청한 작업을 완료한 후 보여줄 페이지) 주소를 저장할 변수
		String nextPage = null;
		boolean isRedirect = false;
		
		//이 서블릿을 요청한 페이지 주소 얻기
		String path = request.getPathInfo();
		System.out.println("member 요청주소path : "+path);
		
		// 실제로 요청을 처리할 서비스 객체, 이안에 모든 처리 메소드 들어있음
		MemberService service = new MemberService();
		HttpSession session = request.getSession();
		
		// pat if문 순서 : 페이지 이동 작업 - service 전달 -ajax 작업 순으로 정렬
		
		/* ############## 페이지 이동 ###############################################*/
		if (path.equals("/main.do")) { //main 페이지 요청시 이구문이 실행된다
			String auth = (String)session.getAttribute("auth");
			String id = (String)session.getAttribute("memberId");
		
			
		
			nextPage = "../pages/defaultMain.jsp";
		
		}else if(path.equals("/joinPage.do")){
			nextPage = "../pages/defaultMain.jsp";
			request.setAttribute("center", "member/joinPage.jsp");
			System.out.println("true");
		}
		else if(path.equals("/login.do")){
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			int result  = service.login(id, pw);
			
		}
		
		
		
		
		
		
		
		
		System.out.println("nextPgae : " + nextPage);

		if (nextPage != null) {
			if (isRedirect) {
				System.out.println("리다이렉트 방식");
				response.sendRedirect(nextPage);
			}
			else {
				System.out.println("디스패치 방식");
				RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
				// 실제 포워딩
				dispatcher.forward(request, response);
			}
		}
		
		// 그런 다음 디스패치 방식으로 View페이지로 포워딩
		
		
	}
	
	
	
	
	

}
