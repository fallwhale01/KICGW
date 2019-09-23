package com.kic.groupware.model1.calendar;

import java.util.ArrayList;

public class MonthTO {

	private String  year, 
					month;
	private String date;
	private int stdayofweek, eddayofweek, endday;
	private ArrayList<String> days;
	
    public ArrayList<String> getDays() {
		return days;
	}

	public void setDays(ArrayList<String> days) {
		this.days = days;
	}

	public int getEndday() {
		return endday;
	}

	public void setEndday(int endday) {
		this.endday = endday;
	}

	public int getStdayofweek() {
		return stdayofweek;
	}

	public void setStdayofweek(int stdayofweek) {
		this.stdayofweek = stdayofweek;
	}

	public int getEddayofweek() {
		return eddayofweek;
	}

	public void setEddayofweek(int eddayofweek) {
		this.eddayofweek = eddayofweek;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getYear() {
		return year;
	}

	public String getMonth() {
		return month;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public void setMonth(String month) {
		this.month = month;
	}
    
}
 