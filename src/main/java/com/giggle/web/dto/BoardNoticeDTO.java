package com.giggle.web.dto;

public class BoardNoticeDTO {

	/*공지사항 선언*/
	private String notice_sect;
	private String boardtitle;
	private String boarddate;
	private String boardnum;
	private String boardcontent;
	
	
	public String getNotice_sect() {
		return notice_sect;
	}
	public void setNotice_sect(String notice_sect) {
		this.notice_sect = notice_sect;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}
	public String getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(String boardnum) {
		this.boardnum = boardnum;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}
	
	

	
	
	
}
