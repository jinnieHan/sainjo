package com.sainjo.gooodhavi.member;

public interface MemberMapper {
	public abstract int bye(Member m);
	public abstract Member getMemberByNickname(Member m);
	public abstract int join(Member m);
	public abstract int update(Member m);
}
