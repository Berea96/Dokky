package com.kitri.dokky.member;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private MemberDao memberDao;
	
	@Override
	public void joinMember(Member member) {
		initDao();
		memberDao.insertMember(member);
	}

	@Override
	public Member getMember(String mem_id) {
		initDao();
		return memberDao.selectMember(mem_id);
	}

	@Override
	public void editMember(Member member) {
		initDao();
		memberDao.updateMember(member);
	}

	@Override
	public void deleteMember(String mem_id) {
		initDao();
		memberDao.deleteMember(mem_id);
	}
	
	private void initDao() {
		memberDao = sqlSession.getMapper(MemberDao.class);
	}
}
