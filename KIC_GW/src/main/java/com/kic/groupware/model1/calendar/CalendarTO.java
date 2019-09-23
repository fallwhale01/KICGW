package com.kic.groupware.model1.calendar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CalendarTO {
	int cdno;
	int eno;
	int cddiv;
	int deptno;
	String cdcolor;
	String cdname;
	String startdate;
	String enddate;
	String contents;
	
	public int getCdno() {
		return cdno;
	}
	public void setCdno(int cdno) {
		this.cdno = cdno;
	}
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public int getCddiv() {
		return cddiv;
	}
	public void setCddiv(int cddiv) {
		this.cddiv = cddiv;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getCdcolor() {
		return cdcolor;
	}
	public void setCdcolor(String cdcolor) {
		this.cdcolor = cdcolor;
	}
	public String getCdname() {
		return cdname;
	}
	public void setCdname(String cdname) {
		this.cdname = cdname;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
}
