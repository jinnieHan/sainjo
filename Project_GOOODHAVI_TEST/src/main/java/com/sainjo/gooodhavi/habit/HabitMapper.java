package com.sainjo.gooodhavi.habit;

import java.util.List;

public interface HabitMapper {
	public abstract int createNewHabit(Habit hb); 
	
	public abstract List<Habit> getMyHabit(Habit hb);

	//public abstract List<Habit> getMyHabit2(Habit hb);
	
	public abstract int updateMyHabit(Habit hb);
	
	public abstract int updateCompleteMyHabit(Habit hb);
	
	public abstract int giveupMyHabit(Habit hb);
}
