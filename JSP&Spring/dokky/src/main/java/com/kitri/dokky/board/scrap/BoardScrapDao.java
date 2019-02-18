package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

//게시판 스크랩 Dao Interface
public interface BoardScrapDao {
	void insertScrap(Scrap scrap);
	ArrayList<Scrap> selectById(String mem_id);
	void deleteScrap(Scrap scrap);
}
