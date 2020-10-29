package com.jwp.smartStore.DAO;



import java.util.List;
import java.util.Map;

public interface BoardDAO {
	public List selectBoardList(Map map);
    public int  insertBoard(Map map);
    public int selectRowCount();
    public int deleteBoard(Map map);
    public List getSelectedBoardbyId(Map map);
	public int updateBoardById(Map map);
    
    
	

}
