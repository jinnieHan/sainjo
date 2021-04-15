package com.sainjo.gooodhavi.habit;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sainjo.gooodhavi.member.Member;

@Service
public class HabitDAO {

	@Autowired
	private SqlSession ss;


	// 습관 등록
	public void regNewHabit(Habit hb, HttpServletRequest req) {
		try {
			if (ss.getMapper(HabitMapper.class).createNewHabit(hb) == 1) {
				req.setAttribute("r", "등록성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "등록실패");
		}
	}


	// 로그인 사용자, 진행 중 취미 XML Parsing
	public Habits getMyHabitXML(Habit hb, HttpServletRequest req) {
		Member m = (Member) req.getSession().getAttribute("loginMember");
		hb.setH_nickname(m.getH_emailaddr());
		hb = ss.getMapper(HabitMapper.class).getMyHabit(hb).get(0);
		List<Habit> mm = new ArrayList<Habit>();
		mm.add(hb);
		return new Habits(mm);
	}

	// 로그인 사용자, 진행 중 취미 조회
	public boolean getMyHabit(Habit hb, HttpServletRequest req) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			hb.setH_nickname(m.getH_emailaddr());
			List<Habit> habits = ss.getMapper(HabitMapper.class).getMyHabit(hb);
			req.setAttribute("habits", habits);
			return !habits.isEmpty();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// 습관 체크하여 업데이트
	public void updateMyHabit(Habit hb, HttpServletRequest req) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			hb.setH_nickname(m.getH_emailaddr());
			hb = ss.getMapper(HabitMapper.class).getMyHabit(hb).get(0);

			BigDecimal t = hb.getH_goal_date();
			int i = t.intValue() + 1;
			BigDecimal bd = new BigDecimal(i);
			BigDecimal bd2 = new BigDecimal(0);

			Date date1 = new Date();
			Date date2 = hb.getH_check_date();
			long calDate = date1.getTime() - date2.getTime();
			long calDateDays = Math.abs(calDate / (24 * 60 * 60 * 1000));
			// calDateDays = Math.abs(calDateDays);
			if (calDateDays > 7) {
				hb.setH_goal_date(bd2);
				System.out.println("리셋");
				if (ss.getMapper(HabitMapper.class).updateMyHabit(hb) == 1) {
					System.out.println("업뎃성공");
				} else {
					System.out.println("업뎃실패");
				}
			} else {
				hb.setH_goal_date(bd);
				System.out.println("처음 시작 or 습관체크+1");
				if (ss.getMapper(HabitMapper.class).updateMyHabit(hb) == 1) {
					System.out.println("업뎃성공");
				} else {
					System.out.println("업뎃실패");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 포기
	public void giveUpMyHabit(Habit hb, HttpServletRequest req) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			hb.setH_nickname(m.getH_emailaddr());
			hb = ss.getMapper(HabitMapper.class).getMyHabit(hb).get(0);

			if (ss.getMapper(HabitMapper.class).giveupMyHabit(hb) == 1) {
				System.out.println("업뎃성공");
			} else {
				System.out.println("업뎃실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// AJAX
//	public Habits getHabitXML(HttpServletRequest req) {
//		List<Habit> habits = ss.getMapper(HabitMapper.class).getMyHabit();
//		Habits habitss = new Habits(habits);
//		return habitss;
//	}

}
