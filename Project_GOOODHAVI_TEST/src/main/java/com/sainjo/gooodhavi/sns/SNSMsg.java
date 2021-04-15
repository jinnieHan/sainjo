package com.sainjo.gooodhavi.sns;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.sainjo.gooodhavi.sns.SNSReply;

// JOIN시킬거 생각해서
public class SNSMsg {
	private String h_pic;
	private String h_nickname;

	private BigDecimal hs_no;
	private Date hs_date;
	private String hs_contents;

	private List<SNSReply> reply; // 댓글들

	public SNSMsg() {
		// TODO Auto-generated constructor stub
	}

	public SNSMsg(String h_pic, String h_nickname, BigDecimal hs_no, Date hs_date, String hs_contents,
			List<SNSReply> reply) {
		super();
		this.h_pic = h_pic;
		this.h_nickname = h_nickname;
		this.hs_no = hs_no;
		this.hs_date = hs_date;
		this.hs_contents = hs_contents;
		this.reply = reply;
	}

	public String getH_pic() {
		return h_pic;
	}

	public void setH_pic(String h_pic) {
		this.h_pic = h_pic;
	}

	public String getH_nickname() {
		return h_nickname;
	}

	public void setH_nickname(String h_nickname) {
		this.h_nickname = h_nickname;
	}

	public BigDecimal getHs_no() {
		return hs_no;
	}

	public void setHs_no(BigDecimal hs_no) {
		this.hs_no = hs_no;
	}

	public Date getHs_date() {
		return hs_date;
	}

	public void setHs_date(Date hs_date) {
		this.hs_date = hs_date;
	}

	public String getHs_contents() {
		return hs_contents;
	}

	public void setHs_contents(String hs_contents) {
		this.hs_contents = hs_contents;
	}

	public List<SNSReply> getReply() {
		return reply;
	}

	public void setReply(List<SNSReply> reply) {
		this.reply = reply;
	}
	
	
	
	
}
