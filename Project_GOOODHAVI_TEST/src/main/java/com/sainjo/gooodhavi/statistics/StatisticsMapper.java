package com.sainjo.gooodhavi.statistics;

import java.util.List;

import com.sainjo.gooodhavi.habit.Habit;
import com.sainjo.gooodhavi.member.Member;

public interface StatisticsMapper {
	public abstract List<Habit> getMyPreviousHabits (Habit h);
	public abstract List<Habit> getAllHabits (Habit h);
	public abstract List<Habit> getMyHabitByNick (Member m);
	public abstract int countPreviousHabits (Habit h);
}
