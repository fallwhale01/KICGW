package com.kic.groupware;

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

import com.kic.cal.MonthTO;

@Controller 
public class SchCtr {

    static final Logger LOGGER = LoggerFactory.getLogger(SchCtr.class);
    
    /**
     * 리스트.
     */
    @RequestMapping(value = "/cal.do")
    public String schList(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
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

        modelMap.addAttribute("searchVO", searchVO);
        
        return "cal";
    }
    
    @RequestMapping(value = "/work.do")
    public String workcaltest(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
    	searchVO.setDate(request.getParameter("work"));
    	modelMap.addAttribute("searchVO", searchVO);
        return "workcaltest";
    }
}
