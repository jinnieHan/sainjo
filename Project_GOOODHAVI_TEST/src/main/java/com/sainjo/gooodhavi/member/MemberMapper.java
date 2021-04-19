package com.sainjo.gooodhavi.member;

import java.util.List;

public interface MemberMapper {
	public abstract int bye(Member m);
	public abstract List<Member> getMemberByNickname(Member m);
	public abstract List<Member> getMemberByEmail(Member m);
	public abstract int join(Member m);
	public abstract int update(Member m);
}
