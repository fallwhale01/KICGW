package com.kic.groupware;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kic.groupware.model1.calendar.MonthTO;

@Controller 
public class SchCtr {

    static final Logger LOGGER = LoggerFactory.getLogger(SchCtr.class);
    
    /**
     * 리스트.
     */
    @RequestMapping(value = "/cal.do")
    public String schList(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
        modelMap.addAttribute("searchVO", searchVO);
        
        return "cal3";
    }
    
    @RequestMapping(value = "/calone.do")
    public String calOne(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
    	searchVO.setDate(request.getParameter("date"));
    	modelMap.addAttribute("searchVO", searchVO);
        return "calOne";
    }
    
    @RequestMapping(value = "/caldepart.do")
    public String calDepart(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
    	searchVO.setDate(request.getParameter("date"));
    	modelMap.addAttribute("searchVO", searchVO);
        return "calDepart";
    }
    
    @RequestMapping(value = "/calcompany.do")
    public String calCompany(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
    	searchVO.setDate(request.getParameter("date"));
    	modelMap.addAttribute("searchVO", searchVO);
        return "calCompany";
    }
    @RequestMapping(value = "/jsontest.do")
    public String jsontest(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
        return "jsontest";
    }
}
