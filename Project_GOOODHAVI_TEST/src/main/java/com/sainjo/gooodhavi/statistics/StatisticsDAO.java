package com.sainjo.gooodhavi.statistics;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sainjo.gooodhavi.habit.Habit;
import com.sainjo.gooodhavi.habit.Habits;
import com.sainjo.gooodhavi.member.Member;

@Service
public class StatisticsDAO {

	@Autowired
	private SqlSession ss;

	// 내 과거 습관이 있는 없는지 확인. 리스트에 넣어서 size가 0인지 검사
	public int checkMyHabit(HttpServletRequest req) {
		Member m = (Member) req.getSession().getAttribute("loginMember");
		System.out.println(m.getH_nickname());
		List<Habit> myHabits = ss.getMapper(StatisticsMapper.class).getMyHabitByNick(m);
		int howMany = myHabits.size();
		return howMany;
	}
	
	// 과거 습관 개수 세기
	public int countPreviousHabits(HttpServletRequest req, Habit h) {
		int count = ss.getMapper(StatisticsMapper.class).countPreviousHabits(h);
		return count;
	}
	
	// '나'의 과거 습관 목록 JSON : 필요없어졌지만 그냥 둠
	public Habits getMyPreviousHabitJSON(Habit h, HttpServletRequest req) {
		List<Habit> habits = ss.getMapper(StatisticsMapper.class).getMyPreviousHabits(h);
		Habits habitss = new Habits(habits);
		return habitss;
	}

	// '나'의 습관명, 달성률, 달성률 평균 보기
	public void getMyHabit(Habit h, HttpServletRequest req) {
		// System.out.println(h.getH_nickname());
		List<Habit> habits = ss.getMapper(StatisticsMapper.class).getMyPreviousHabits(h);
		req.setAttribute("habits", habits);

		double a_rate = 0; // 내 습관 달성률
		int count = 0; // 내 습관 개수
		for (Habit habit : habits) { // 반복돌면서 
			if (habit.getH_achivement_rate() != null) { // 현재진행중인거 제외.. -> 필요없음. 이미 쿼리에서 제외를 시켰음.
				a_rate += Double.parseDouble(habit.getH_achivement_rate().toString());
				count++;
			}
		}
		// System.out.println("내 달성률 다 더하면 : " + a_rate);
		double average = a_rate / count; // 나의 전체 습관 달성률 평균 (진행중인거 제외)
		System.out.println("내 평균" + average);
		req.setAttribute("myAverage", average);

	}

	// 나 빼고 남들의 달성률 평균 구하기
	public void getAllHabit(Habit h, HttpServletRequest req) {
		List<Habit> habits = ss.getMapper(StatisticsMapper.class).getAllHabits(h);
		double a_rate = 0; // 남들의 습관 달성률
		int count = 0; // 남들의 습관 개수
		for (Habit habit : habits) {
			a_rate += Double.parseDouble(habit.getH_achivement_rate().toString());
			System.out.println(a_rate);
			count++;
		}
		// System.out.println("타회원 달성률 다 더하면 : " + a_rate);
		double average = a_rate / count; // 타회원의 전체 습관 달성률 평균
		System.out.println("타회원 평균" + average);
		req.setAttribute("totalAverage", average);
	}

}
