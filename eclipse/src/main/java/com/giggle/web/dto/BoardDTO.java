package com.giggle.web.dto;

public class BoardDTO {
	/*사용자 게시판 선언*/
	private int boardnum;
	private String user_nick;
	private String boardtitle;
	private String boardcontent;
	private String boarddate;
	private int boardreadcount;
	
	
	
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getuser_nick() {
		return user_nick;
	}
	public void setuser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}
	public String getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}
	public int getBoardreadcount() {
		return boardreadcount;
	}
	public void setBoardreadcount(int boardreadcount) {
		this.boardreadcount = boardreadcount;
	}
	
	
	
}
