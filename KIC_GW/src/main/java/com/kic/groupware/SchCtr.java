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
    @RequestMapping(value = "/schList")
    public String schList(HttpServletRequest request, MonthTO searchVO, ModelMap modelMap) {
        if (searchVO.getYear()==null || "".equals(searchVO.getYear())) {
        	Calendar today = Calendar.getInstance();
        	searchVO.setYear(Integer.toString(today.get(Calendar.YEAR)));
        	searchVO.setMonth(Integer.toString(today.get(Calendar.MONTH)));
        } else if ("13".equals(searchVO.getMonth())) {
        	int year = Integer.parseInt(searchVO.getYear()) + 1;
        	searchVO.setYear(Integer.toString(year));
        	searchVO.setMonth("1");
        } else if ("0".equals(searchVO.getMonth())) {
        	int year = Integer.parseInt(searchVO.getYear()) - 1;
        	searchVO.setYear(Integer.toString(year));
        	searchVO.setMonth("12");
        }
        int year = Integer.parseInt(searchVO.getYear());
    	int month = Integer.parseInt(searchVO.getMonth());
    	
    	int START_DAY_OF_WEEK = 0;
    	int END_DAY_OF_WEEK = 0;
    	int END_DAY = 0;
    	
    	Calendar sDay = Calendar.getInstance();
    	Calendar eDay = Calendar.getInstance();
    	
    	sDay.set( year, month-1, 1 );
    	eDay.set( year, month, 1-1 );
    	
    	// 1일의 요일
    	START_DAY_OF_WEEK = sDay.get( Calendar.DAY_OF_WEEK );
    	
    	// 마지막 날의 요일
    	END_DAY_OF_WEEK = eDay.get( Calendar.DAY_OF_WEEK );
    	
    	// 마지막날
    	END_DAY = eDay.get( Calendar.DATE );
    	
        Integer dayofweek = START_DAY_OF_WEEK;

        modelMap.addAttribute("searchVO", searchVO);
        
        return "cal";
    }
}
