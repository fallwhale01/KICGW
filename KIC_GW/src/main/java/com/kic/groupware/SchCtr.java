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
    	/*
    	if (searchVO.getYear()==null || "".equals(searchVO.getYear())) {
        	Calendar today = Calendar.getInstance();
        	searchVO.setYear(Integer.toString(today.get(Calendar.YEAR)));
        	searchVO.setMonth(Integer.toString(today.get(Calendar.MONTH)+1));
        } else if ("13".equals(searchVO.getMonth())) {
        	int year = Integer.parseInt(searchVO.getYear()) + 1;
        	searchVO.setYear(Integer.toString(year));
        	searchVO.setMonth("1");
        } else if ("0".equals(searchVO.getMonth())) {
        	int year = Integer.parseInt(searchVO.getYear()) - 1;
        	searchVO.setYear(Integer.toString(year));
        	searchVO.setMonth("12");
        }
        int START_DAY_OF_WEEK = 0;
    	int END_DAY_OF_WEEK = 0;
    	int END_DAY = 0;
    	
    	Calendar sDay = Calendar.getInstance();
    	Calendar eDay = Calendar.getInstance();
    	
    	sDay.set( Integer.parseInt(searchVO.getYear()), Integer.parseInt(searchVO.getMonth())-1, 1 );
    	eDay.set( Integer.parseInt(searchVO.getYear()), Integer.parseInt(searchVO.getMonth()), 1-1 );
    	
    	// 1일의 요일
    	searchVO.setStdayofweek(sDay.get( Calendar.DAY_OF_WEEK ));
    	
    	// 마지막 날의 요일
    	searchVO.setEddayofweek(eDay.get( Calendar.DAY_OF_WEEK ));
    	
    	// 마지막날
    	searchVO.setEndday(eDay.get( Calendar.DATE ));
    	System.out.println(searchVO.getEndday());
    	ArrayList<String> list = new ArrayList<>();
    	for(int i=1; i<=searchVO.getEndday(); i++) {
    		list.add(Integer.toString(i));
    	}
    	searchVO.setDays(list);*/
    	
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
