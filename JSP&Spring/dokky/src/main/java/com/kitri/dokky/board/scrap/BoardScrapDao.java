package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

public interface BoardScrapDao {
	void insertScrap(Scrap scrap);
	ArrayList<Scrap> selectById(String mem_id);
	void deleteScrap(Scrap scrap);
}
