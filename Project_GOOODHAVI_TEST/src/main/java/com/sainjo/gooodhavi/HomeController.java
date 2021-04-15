package com.sainjo.gooodhavi;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sainjo.gooodhavi.member.MemberDAO;
import com.sainjo.gooodhavi.sns.SNSDAO;

@Controller
public class HomeController {

	@Autowired
	private MemberDAO mDAO;
	
	@Autowired
	private SNSDAO sDAO;
	
	private boolean isFirstReq;
	
	public HomeController() {
		isFirstReq = true;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		if (isFirstReq) {
			sDAO.countAllMsg();
			isFirstReq = false;
		}
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String indexDo(HttpServletRequest req) {
		return home(req);
	}
	
}
