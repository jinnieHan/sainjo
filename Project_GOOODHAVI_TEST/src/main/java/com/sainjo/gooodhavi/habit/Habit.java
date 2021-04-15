package com.sainjo.gooodhavi.habit;

import java.math.BigDecimal;
import java.util.Date;

import javax.xml.bind.annotation.XmlElement;

public class Habit {
	private BigDecimal h_habit_seq_no;
	private String h_habit;
	private String h_keyword;
	private String h_nickname;
	private Date h_start_date;
	private Date h_check_date;
	private Date h_end_date;
	private BigDecimal h_goal_date;
	private String h_status;
	private BigDecimal h_achivement_rate;

	public Habit() {
		// TODO Auto-generated constructor stub
	}

	public Habit(BigDecimal h_habit_seq_no, String h_habit, String h_keyword, String h_nickname, Date h_start_date,
			Date h_check_date, Date h_end_date, BigDecimal h_goal_date, String h_status, BigDecimal h_achivement_rate) {
		super();
		this.h_habit_seq_no = h_habit_seq_no;
		this.h_habit = h_habit;
		this.h_keyword = h_keyword;
		this.h_nickname = h_nickname;
		this.h_start_date = h_start_date;
		this.h_check_date = h_check_date;
		this.h_end_date = h_end_date;
		this.h_goal_date = h_goal_date;
		this.h_status = h_status;
		this.h_achivement_rate = h_achivement_rate;
	}

	public BigDecimal getH_habit_seq_no() {
		return h_habit_seq_no;
	}
	@XmlElement
	public void setH_habit_seq_no(BigDecimal h_habit_seq_no) {
		this.h_habit_seq_no = h_habit_seq_no;
	}

	public String getH_habit() {
		return h_habit;
	}
	@XmlElement
	public void setH_habit(String h_habit) {
		this.h_habit = h_habit;
	}

	public String getH_keyword() {
		return h_keyword;
	}
	@XmlElement
	public void setH_keyword(String h_keyword) {
		this.h_keyword = h_keyword;
	}

	public String getH_nickname() {
		return h_nickname;
	}
	@XmlElement
	public void setH_nickname(String h_nickname) {
		this.h_nickname = h_nickname;
	}

	public Date getH_start_date() {
		return h_start_date;
	}
	@XmlElement
	public void setH_start_date(Date h_start_date) {
		this.h_start_date = h_start_date;
	}

	public Date getH_check_date() {
		return h_check_date;
	}
	@XmlElement
	public void setH_check_date(Date h_check_date) {
		this.h_check_date = h_check_date;
	}

	public Date getH_end_date() {
		return h_end_date;
	}
	@XmlElement
	public void setH_end_date(Date h_end_date) {
		this.h_end_date = h_end_date;
	}

	public BigDecimal getH_goal_date() {
		return h_goal_date;
	}
	@XmlElement
	public void setH_goal_date(BigDecimal h_goal_date) {
		this.h_goal_date = h_goal_date;
	}

	public String getH_status() {
		return h_status;
	}
	@XmlElement
	public void setH_status(String h_status) {
		this.h_status = h_status;
	}

	public BigDecimal getH_achivement_rate() {
		return h_achivement_rate;
	}
	@XmlElement
	public void setH_achivement_rate(BigDecimal h_achivement_rate) {
		this.h_achivement_rate = h_achivement_rate;
	}

}
