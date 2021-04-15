package com.sainjo.gooodhavi.sns;

import java.math.BigDecimal;
import java.util.Date;

public class SNSReply {
	private BigDecimal hsr_no;
	private BigDecimal hsr_hs_no;
	private String hsr_nickname;
	private String hsr_contents;
	private Date hsr_date;

	public SNSReply() {
		// TODO Auto-generated constructor stub
	}

	public SNSReply(BigDecimal hsr_no, BigDecimal hsr_hs_no, String hsr_nickname, String hsr_contents, Date hsr_date) {
		super();
		this.hsr_no = hsr_no;
		this.hsr_hs_no = hsr_hs_no;
		this.hsr_nickname = hsr_nickname;
		this.hsr_contents = hsr_contents;
		this.hsr_date = hsr_date;
	}

	public BigDecimal getHsr_no() {
		return hsr_no;
	}

	public void setHsr_no(BigDecimal hsr_no) {
		this.hsr_no = hsr_no;
	}

	public BigDecimal getHsr_hs_no() {
		return hsr_hs_no;
	}

	public void setHsr_hs_no(BigDecimal hsr_hs_no) {
		this.hsr_hs_no = hsr_hs_no;
	}

	public String getHsr_nickname() {
		return hsr_nickname;
	}

	public void setHsr_nickname(String hsr_nickname) {
		this.hsr_nickname = hsr_nickname;
	}

	public String getHsr_contents() {
		return hsr_contents;
	}

	public void setHsr_contents(String hsr_contents) {
		this.hsr_contents = hsr_contents;
	}

	public Date getHsr_date() {
		return hsr_date;
	}

	public void setHsr_date(Date hsr_date) {
		this.hsr_date = hsr_date;
	}

	
}
