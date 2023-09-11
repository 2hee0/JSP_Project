package com.giggle.web.dto;

public class BoardNoticeDTO {

	/*공지사항 선언*/
	private String notice_sect;
	private String boardtitle;
	private String boarddate;
	
	
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
	
	

	
	
	
}
