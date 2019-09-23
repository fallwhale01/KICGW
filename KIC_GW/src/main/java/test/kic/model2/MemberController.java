package test.kic.model2;
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * 회원관련 Controller
 *
 */
public class MemberController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
 
    /**
     * GET 방식일 경우 doGet()
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
            doProcess(request,response);
    }      
        
    /**
     * POST 방식일 경우 doPost()
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
            doProcess(request,response);
    }                          
        
    /**
     * 명령어에 따른 해당 Action을 지정해 준다.
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void doProcess(HttpServletRequest request, HttpServletResponse response) 
             throws ServletException, IOException {
        
        // 넘어온 커맨드를 추출하는 과정
        String requestURI = request.getRequestURI();
        int cmdIdx = requestURI.lastIndexOf("/")+1;
        
        String command = requestURI.substring(cmdIdx);
        
        // URI, command 확인
        //System.out.println("requestURI : "+requestURI);
        //System.out.println("command : "+command);
        
        ActionForward forward = null;
        Action action = null;
        
        // 보여줄 화면 URL
        String form = "project.jsp?contentPage=member/";
        
        // 커맨드에 해당하는 액션을 실행한다.
        try {
            // 화면전환
            if(command.equals("project_main.do")) // 메인화면 이동
            {
                forward=new ActionForward();
                forward.setRedirect(false);
                forward.setNextPath("project_main.jsp");
            }
            else if(command.equals("project_create.do"))    // 로그인화면 이동
            {
                forward=new ActionForward();
                forward.setRedirect(false);
                forward.setNextPath(form+"project_create.jsp");
            }
            else if(command.equals("project_ing.do"))    // 회원가입화면 이동
            {
                forward=new ActionForward();
                forward.setRedirect(false);
                forward.setNextPath(form+"project_ing.jsp");
            }
            else if(command.equals("project_ed.do"))    // 내정보 클릭 - 회원정보화면 이동
            {
                forward=new ActionForward();
                forward.setRedirect(false);
                forward.setNextPath(form+"project_ed.jsp");
            }
            else if(command.equals("project_content.do")) // 회원수정화면 이동
            {
                forward=new ActionForward();
                forward.setRedirect(false);
                forward.setNextPath(form+"project_content.jsp");
            }
           
 
            // 화면이동 - isRedirext() 값에 따라 sendRedirect 또는 forward를 사용
            // sendRedirect : 새로운 페이지에서는 request와 response객체가 새롭게 생성된다.
            // forward : 현재 실행중인 페이지와 forwad에 의해 호출될 페이지는 request와 response 객체를 공유
            if(forward != null){
                if (forward.isRedirect()) {
                    response.sendRedirect(forward.getNextPath());
                } else {
                    RequestDispatcher dispatcher = request
                            .getRequestDispatcher(forward.getNextPath());
                    dispatcher.forward(request, response);
                }
            }
 
        } catch (Exception e) {
            e.printStackTrace();
        }
    } // end doProcess
}
