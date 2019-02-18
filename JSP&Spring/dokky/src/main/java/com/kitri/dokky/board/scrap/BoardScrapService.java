package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

//게시판 스크랩 Service Interface
public interface BoardScrapService {
	void scrapBoard(Scrap scrap);
	ArrayList<Scrap> getScrapList(String mem_id);
	void cancleScrap(Scrap scrap);
}
