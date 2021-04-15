package com.sainjo.gooodhavi.member;

public class Member {
	private String h_nickname;
	private String h_emailaddr;
	private String h_password;
	private String h_gen;
	private String h_pic;
	private String h_keyword;

	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String h_nickname, String h_emailaddr, String h_password, String h_gen, String h_pic,
			String h_keyword) {
		super();
		this.h_nickname = h_nickname;
		this.h_emailaddr = h_emailaddr;
		this.h_password = h_password;
		this.h_gen = h_gen;
		this.h_pic = h_pic;
		this.h_keyword = h_keyword;
	}

	public String getH_nickname() {
		return h_nickname;
	}

	public void setH_nickname(String h_nickname) {
		this.h_nickname = h_nickname;
	}

	public String getH_emailaddr() {
		return h_emailaddr;
	}

	public void setH_emailaddr(String h_emailaddr) {
		this.h_emailaddr = h_emailaddr;
	}

	public String getH_password() {
		return h_password;
	}

	public void setH_password(String h_password) {
		this.h_password = h_password;
	}

	public String getH_gen() {
		return h_gen;
	}

	public void setH_gen(String h_gen) {
		this.h_gen = h_gen;
	}

	public String getH_pic() {
		return h_pic;
	}

	public void setH_pic(String h_pic) {
		this.h_pic = h_pic;
	}

	public String getH_keyword() {
		return h_keyword;
	}

	public void setH_keyword(String h_keyword) {
		this.h_keyword = h_keyword;
	}

}
