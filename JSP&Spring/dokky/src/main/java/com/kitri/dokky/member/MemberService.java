package com.kitri.dokky.member;

public interface MemberService {
	void joinMember(Member member);
	Member getMember(String mem_id);
	void editMember(Member member);
	void deleteMember(String mem_id);
}
