package com.sainjo.gooodhavi.habit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sainjo.gooodhavi.member.MemberDAO;

@Controller
public class HabitController {

	@Autowired
	private HabitDAO hbDAO;

	@Autowired
	private MemberDAO mDAO;

	@RequestMapping(value = "/habit.get", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	public @ResponseBody Habits habitGet(Habit hb, HttpServletRequest req) {
		return hbDAO.getMyHabitXML(hb, req);
	}


	// 로그인한 사람이 
	// 	도전 중인 습관이 없으면 : 새로운 습관 만들기 
	// 	도전 중인 습관이 있으면 : 나의 습관 페이지로
	@RequestMapping(value = "/habit.go", method = RequestMethod.GET)
	public String habitGo(Habit hb, HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			if (hbDAO.getMyHabit(hb, req)) {
				req.setAttribute("contentPage", "habit/myHabit.jsp");
				hbDAO.getMyHabit(hb, req);
			} else {
				req.setAttribute("contentPage", "habit/newHabit.jsp");
			}
		}
		return "index";
	}

	// 새로운 습관 만들기
	@RequestMapping(value = "/habit.reg", method = RequestMethod.POST)
	public String checkMyHavi(Habit hb, HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			hbDAO.regNewHabit(hb, req);
			req.setAttribute("contentPage", "habit/myHabit.jsp");
		}
		habitGo(hb, req);
		return "index";
	}

	// 습관체크
	@RequestMapping(value = "/habit.update", method = RequestMethod.GET)
	public String updateMyHavi(Habit hb, HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			hbDAO.updateMyHabit(hb, req);
		}
		
		if (hbDAO.getMyHabit(hb, req)) {
			req.setAttribute("contentPage", "habit/myHabit.jsp");
			hbDAO.getMyHabit(hb, req);
		} else {
			//습관 성공 종료 시 가는 페이지....
			req.setAttribute("contentPage", "habit/gooodMyHabit.jsp");
			//req.setAttribute("contentPage", "home.jsp");
		}
		
		
		//habitGo(hb, req);
		return "index";
	}
	
	// 도전 중인 습관 포기
	@RequestMapping(value = "/habit.giveup", method = RequestMethod.GET)
	public String giveUpMyHavi(Habit hb, HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			hbDAO.giveUpMyHabit(hb, req);
		}
		req.setAttribute("contentPage", "home.jsp");
		//habitGo(hb, req);
		return "index";
	}

}
