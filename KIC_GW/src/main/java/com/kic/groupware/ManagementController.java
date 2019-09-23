package com.kic.groupware;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kic.groupware.model1.mypage.ManagementDAO;
import com.kic.groupware.model1.mypage.ManagementTO;

@Controller
public class ManagementController {
	
	@RequestMapping(value = "/Management.do")
	public ModelAndView management( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "management 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Management" );
		
		return model;
	}
	
	@RequestMapping(value = "/checkin.do")
	public ModelAndView checkin( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "checkin 컨트롤러 호출" );
		
		String date = request.getParameter("date");
		
		ManagementDAO dao = new ManagementDAO();
		int flag = dao.checkin(date);
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "checkin" );
		model.addObject( "flag", flag );
		
		return model;
	}
	
	@RequestMapping(value = "/checkout.do")
	public ModelAndView checkout( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "checkout 컨트롤러 호출" );
		
		String date = request.getParameter("date");
		
		ManagementDAO dao = new ManagementDAO();
		int flag = dao.checkout(date);
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "checkout" );
		model.addObject( "flag", flag );
		
		return model;
	}
	
	// 메인페이지의 출근, 퇴근시간 출력용
	@RequestMapping(value = "/checkinout.do")
	public ModelAndView checkinout( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "checkinout 컨트롤러 호출" );
		
		String eno = request.getParameter("eno");
		
		ManagementDAO dao = new ManagementDAO();
		ManagementTO to = dao.checkinout(eno);
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "checkinout" );
		model.addObject( "to", to );
		
		return model;
	}
	
	@RequestMapping(value = "/managelist.do")
	public ModelAndView manageList( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "managementList 컨트롤러 호출" );
		
		String eno = request.getParameter("eno");
		
		ManagementDAO dao = new ManagementDAO();
		ArrayList<ManagementTO> manageLists = dao.managelist(eno);
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "managelist" );
		model.addObject("manageLists", manageLists);
		
		return model;
	}
	
}
