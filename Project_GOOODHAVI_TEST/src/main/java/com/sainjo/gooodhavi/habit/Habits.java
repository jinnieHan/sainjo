package com.sainjo.gooodhavi.habit;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Habits {
	private List<Habit> habit;
	
	public Habits() {
		// TODO Auto-generated constructor stub
	}

	public Habits(List<Habit> habit) {
		super();
		this.habit = habit;
	}

	public List<Habit> getHabit() {
		return habit;
	}

	public void setHabit(List<Habit> habit) {
		this.habit = habit;
	}
	
}
