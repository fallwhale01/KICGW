package com.kic.groupware;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kic.groupware.model1.auth.AuthDAO;
import com.kic.groupware.model1.auth.AuthTO;
import com.kic.groupware.model1.auth.AuthvacationTO;

@Controller 
public class AuthController {

    static final Logger LOGGER = LoggerFactory.getLogger(AuthController.class);
    
    /**
     * 리스트.
     */
    @RequestMapping(value = "/auth.do")
	public ModelAndView auth( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "auth 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/auth" );
		
		return model;
	}
	@RequestMapping(value = "/vacation.do")
	public ModelAndView vacation( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "vacation 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/vacation" );
		
		return model;
	}
	
	@RequestMapping(value = "/vacation_ok.do")
	public ModelAndView vacation_ok( HttpServletRequest request, HttpServletResponse response) {

		AuthvacationTO to = new AuthvacationTO();	
	//	to.setVno(request.getParameter("vno"));
		to.setAuthno(request.getParameter("authno"));
	//	to.setEname(request.getParameter("ename"));
	//	to.setDeptno(request.getParameter("deptno"));
	//	to.setVdate(request.getParameter("vdate"));
	//	to.setPno(request.getParameter("pno"));
	//	to.setVtype(request.getParameter("vtype"));
	//	to.setVtime(request.getParameter("vtime"));
	//	to.setVreason(request.getParameter("vreason"));

		AuthDAO dao = new AuthDAO();
		int flag = dao.vacationin(to);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName( "Auth/vacation_ok" );
		modelAndView.addObject( "flag", flag );
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/busitrip.do")
	public ModelAndView busitrip( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "busitrip 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/busitrip" );
		
		return model;
	}
	@RequestMapping(value = "/busitrip_ok.do")
	public ModelAndView busitrip_ok( HttpServletRequest request, HttpServletResponse response) {

		AuthTO to = new AuthTO();	
		to.setAuthno(request.getParameter("auth"));
		to.setBno(request.getParameter("bno"));
		to.setBinsertdate(request.getParameter("binsertdate"));
		to.setDeptno(request.getParameter("deptno"));
		to.setEname(request.getParameter("ename"));
		to.setBspot(request.getParameter("bspot"));
		to.setBpurpose(request.getParameter("bpurpose"));
		to.setAuthstate(request.getParameter("authstate"));

		AuthDAO dao = new AuthDAO();
		int flag = dao.busitripin(to);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName( "Auth/busitrip_ok" );
		modelAndView.addObject( "flag", flag );
		
		return modelAndView;
	}
	@RequestMapping(value = "/auth4.do")
	public ModelAndView auth4( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "auth4 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/auth4" );
		
		return model;
	}
	@RequestMapping(value = "/auth5.do")
	public ModelAndView auth5( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "auth5 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/auth5" );
		
		return model;
	}
}
