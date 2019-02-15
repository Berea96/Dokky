package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

public interface BoardScrapService {
	void scrapBoard(Scrap scrap);
	ArrayList<Scrap> getScrapList(String mem_id);
	void cancleScrap(Scrap scrap);
}
