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
	@RequestMapping(value = "/auth2.do")
	public ModelAndView auth2( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "auth2 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/auth2" );
		
		return model;
	}
	@RequestMapping(value = "/auth3.do")
	public ModelAndView auth3( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "auth3 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Auth/auth3" );
		
		return model;
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
