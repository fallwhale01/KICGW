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
public class ProjectController {

    static final Logger LOGGER = LoggerFactory.getLogger(ProjectController.class);
    
    /**
     * 리스트.
     */

	@RequestMapping(value = "/project.do")
	public ModelAndView project( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "project 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Project/project" );
		
		return model;
	}
	
	@RequestMapping(value = "/project_ing.do")
	public ModelAndView project_ing( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "project_ing 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Project/project_ing" );
		
		return model;
	}
	@RequestMapping(value = "/project_ed.do")
	public ModelAndView project_ed( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "project_ed 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Project/project_ed" );
		
		return model;
	}
	@RequestMapping(value = "/project_create.do")
	public ModelAndView project_create( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "project_create 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Project/project_create" );
		
		return model;
	}
	@RequestMapping(value = "/project_content.do")
	public ModelAndView project_content( HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "project_content 컨트롤러 호출" );
		
		ModelAndView model = new ModelAndView();
		model.setViewName( "Project/project_content" );
		
		return model;
	}
}
