package com.kitri.dokky.member;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//회원 Service를 Implements
@Service("memberService")
public class MemberServiceImpl implements MemberService {

	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private MemberDao memberDao;
	
	//회원 가입에 대한 메소드
	@Override
	public void joinMember(Member member) {
		initDao();
		memberDao.insertMember(member);
	}

	//회원 정보를 불러오는 메소드
	@Override
	public Member getMember(String mem_id) {
		initDao();
		return memberDao.selectMember(mem_id);
	}

	//회원 정보를 수정하는 메소드
	@Override
	public void editMember(Member member) {
		initDao();
		memberDao.updateMember(member);
	}

	//회원 탈퇴 메소드
	@Override
	public void deleteMember(String mem_id) {
		initDao();
		memberDao.deleteMember(mem_id);
	}
	
	//dao에 대해서 초기화하는 메소드
	private void initDao() {
		memberDao = sqlSession.getMapper(MemberDao.class);
	}
}
