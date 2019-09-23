package com.kic.groupware;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/main2.do")
	public ModelAndView main2( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "management 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "main2" );
		
		return model;
	}
	
}
