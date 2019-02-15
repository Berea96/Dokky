package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("boardScrapService")
public class BoardScrapServiceImpl implements BoardScrapService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardScrapDao dao;
	
	@Override
	public void scrapBoard(Scrap scrap) {
		dao = sqlSession.getMapper(BoardScrapDao.class);
		dao.insertScrap(scrap);
	}

	@Override
	public ArrayList<Scrap> getScrapList(String mem_id) {
		dao = sqlSession.getMapper(BoardScrapDao.class);
		return dao.selectById(mem_id);
	}

	@Override
	public void cancleScrap(Scrap scrap) {
		dao = sqlSession.getMapper(BoardScrapDao.class);
		dao.deleteScrap(scrap);
	}
}
