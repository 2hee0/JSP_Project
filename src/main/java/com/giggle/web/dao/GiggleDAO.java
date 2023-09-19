package com.giggle.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.giggle.mybatis.SqlMapConfig;
import com.giggle.web.dto.BoardDTO;
import com.giggle.web.dto.BoardNoticeDTO;
import com.giggle.web.dto.GiggleDTO;
import com.giggle.web.dto.JoinDTO;
import com.giggle.web.dto.UpdateDTO;

public class GiggleDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;

	public GiggleDAO() {
		sqlsession = factory.openSession(true);
	}

	public boolean LoginAction(String user_id, String user_pw) {

		int cnt = 0;
		boolean result = false;

		Map<String, String> data = new HashMap<>();
		data.put("user_id", user_id);
		data.put("user_pw", user_pw);

		cnt = sqlsession.selectOne("Giggle.LoginAction", data);
		if (cnt == 1) {
			result = true;
		}

		return result;
	}

	public String getUserNameByCredentials(String user_id, String user_pw) {
		String user_name = null;
		try {
			Map<String, String> credentials = new HashMap<>();
			credentials.put("user_id", user_id);
			credentials.put("user_pw", user_pw);

			// MyBatis를 사용하여 SQL 쿼리 실행
			user_name = sqlsession.selectOne("Giggle.getUserNameByCredentials", credentials);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user_name;
	}

	public List<BoardDTO> getBoardList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardDTO> list = sqlsession.selectList("Giggle.getBoardList", datas);
		return list;
	}

	public List<BoardNoticeDTO> getBoardNotice() {
		List<BoardNoticeDTO> list = sqlsession.selectList("Giggle.getBoardNotice");
		return list;
	}

	public BoardDTO getDetail(int boardnum) {
		return sqlsession.selectOne("Giggle.getDetail", boardnum);
	}

	public boolean addNotice(BoardDTO addntc) {
		boolean result = false;

		if (sqlsession.insert("Giggle.addctn", addntc) == 1) {
			result = true;
		}

		return result;
	}

	public boolean checkId(String user_id) {
		boolean result = false;

		// query 호출
		int cnt = 0;
		// 1 param : 어떤 쿼리를 호출할지
		// 2 param : 쿼리 실행 시 필요한 파라미터 값
		cnt = sqlsession.selectOne("Giggle.checkId", user_id);
		if (cnt >= 1) {
			result = true;
		}

		return result;
	}

	public boolean JoinAction(JoinDTO giggle) {
		boolean result = false;

		if (sqlsession.insert("Giggle.join", giggle) != 0) {
			result = true;
		}
		return result;
	}

	public int getBoardCnt() {
		return sqlsession.selectOne("Giggle.getBoardCnt");

	}

	public Object getNoticeDetail(int boardnum) {
		return sqlsession.selectOne("Giggle.getNoticeDetail", boardnum);
	}

	public int getUserNum(String user_id, String user_pw) {
		int user_num = 0;
		try {
			Map<String, String> credentials = new HashMap<>();
			credentials.put("user_id", user_id);
			credentials.put("user_pw", user_pw);

			// Fetch user_num from the database
			user_num = sqlsession.selectOne("Giggle.getUserNum", credentials);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user_num;
	}

	public Object getuserdata(int usernum) {
		return sqlsession.selectOne("Giggle.getuserinfo", usernum);
	}

	public Object getcontent(int content_index) {
		return sqlsession.selectOne("Giggle.getcontent", content_index);
	}

	public Object getcontent2(int content_index) {
		return sqlsession.selectOne("Giggle.getcontent2", content_index);
	}

	public Object getcontent3(int content_index) {
		return sqlsession.selectOne("Giggle.getcontent3", content_index);
	}

	public Object getcontent4(int content_index) {
		return sqlsession.selectOne("Giggle.getcontent4", content_index);
	}

	public boolean UpdateMember4(int user_num, String membership_type) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_num", user_num);
		datas.put("membership_type", membership_type);

		if (sqlsession.update("Giggle.updateMembershipInfo", datas) == 1) {
			result = true;
		}

		return result;
	}

	public boolean UpdateMember3(int user_num, String membership_type) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_num", user_num);
		datas.put("membership_type", membership_type);

		if (sqlsession.update("Giggle.updateMembershipInfo1", datas) == 1) {
			result = true;
		}

		return result;
	}

	public boolean UpdateMember2(int user_num, String membership_type) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_num", user_num);
		datas.put("membership_type", membership_type);

		if (sqlsession.update("Giggle.updateMembershipInfo", datas) == 1) {
			result = true;
		}

		return result;
	}

	public boolean UpdateMember1(int user_num, String membership_type) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_num", user_num);
		datas.put("membership_type", membership_type);

		if (sqlsession.update("Giggle.updateMembershipInfo1", datas) == 1) {
			result = true;
		}

		return result;
	}

	public Object getuserdata1(int usernum) {
		return sqlsession.selectOne("Giggle.getuserinfo", usernum);
	}

	public boolean checkNick(String user_nick) {
		boolean result = false;

		// query 호출
		int cnt = 0;
		cnt = sqlsession.selectOne("Giggle.checkNick", user_nick);
		if (cnt >= 1) {
			result = true;
		}

		return result;
	}

	public boolean deleteBoard(int boardnum) {
		boolean result = false;

		if (sqlsession.delete("Giggle.deleteBoard", boardnum) == 1) {
			result = true;
		}
		return result;
	}

	public String getUserNick(String user_id, String user_pw) {
		String user_nick = null;
		try {
			Map<String, String> credentials = new HashMap<>();
			credentials.put("user_id", user_id);
			credentials.put("user_pw", user_pw);

			// MyBatis를 사용하여 SQL 쿼리 실행
			user_nick = sqlsession.selectOne("Giggle.getUserNick", credentials);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user_nick;
	}

	public boolean checkPw(String user_pw) {
		boolean result = false;
		int cnt = 0;

		cnt = sqlsession.selectOne("Giggle.checkPw", user_pw);
		if (cnt >= 1) {
			result = true;
		}

		return result;
	}

	// 마이페이지 유저 닉네임 변경
	public boolean updateUserNick(int user_num, String user_nick) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_num", user_num);
		datas.put("user_nick", user_nick);

		if (sqlsession.update("Giggle.MynickAction", datas) == 1) {
			result = true;
		}

		return result;
	}

}
