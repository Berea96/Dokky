package com.kitri.dokky.member;

public interface MemberDao {
	void insertMember(Member member);
	Member selectMember(String mem_id);
	void updateMember(Member member);
	void deleteMember(String mem_id);
}
