package com.sainjo.gooodhavi.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sainjo.gooodhavi.habit.Habit;
import com.sainjo.gooodhavi.habit.Habits;
import com.sainjo.gooodhavi.member.MemberDAO;

@Controller
public class StatisticsController {
	
	@Autowired
	private StatisticsDAO sDAO;
	
	@Autowired
	private MemberDAO mDAO; 
	
	@Autowired
	private SqlSession ss;
	
	@RequestMapping(value = "/statistics.go", method = RequestMethod.GET)
	public String getAllHabit(Habit h, HttpServletRequest req) {
		// 로그인했고
		if (mDAO.loginCheck(req)) {
			// 과거습관 개수가 0이면 과거내역 없다는 페이지 보이기
			// checkMyHabit 대신 countPreviousHabits 넣어도 작동한다.
			if (sDAO.checkMyHabit(req) == 0) {
				req.setAttribute("contentPage", "statistics/noStatistics.jsp");
			} else {
				sDAO.getMyHabit(h, req);
				sDAO.getAllHabit(h, req);
				req.setAttribute("contentPage", "statistics/statistics.jsp");
			}
		} else { // 로그인한게 아니라면 홈으로 튕기도록
			req.setAttribute("contentPage", "home.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value = "/statistics.json.get", method = RequestMethod.GET,
			produces="application/json; charset=utf-8")
	public @ResponseBody Habits getPreviousHabitJSON(Habit h, HttpServletRequest req, HttpServletResponse res) {
		res.addHeader("Access-Control-Allow-Origin", "*");
		return sDAO.getMyPreviousHabitJSON(h, req);
	}
}
