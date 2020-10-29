
package com.jwp.smartStore.sql;


import java.util.List;
import java.util.Map;

public interface noticeBoard_Mapper {
	
	public List selectBoardList(Map map);
	public int insertBoard(Map map);
	public int selectRowCount();
	public int deleteBoard(Map map);
	public List getSelectedBoardbyId(Map map);
	public int updateBoardById(Map map);
	
	
	

}
