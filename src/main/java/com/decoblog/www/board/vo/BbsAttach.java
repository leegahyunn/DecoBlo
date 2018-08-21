package com.decoblog.www.board.vo;

public class BbsAttach {
	private int attachNo;
	private int attachBbsNo;
	private String attachOriginalFile;
	private String attachSavedFile;
	
	public BbsAttach() {
	}
	
	public BbsAttach(int attachNo, int attachBbsNo, String attachOriginalFile, String attachSavedFile) {
		this.attachNo = attachNo;
		this.attachBbsNo = attachBbsNo;
		this.attachOriginalFile = attachOriginalFile;
		this.attachSavedFile = attachSavedFile;
	}
	public int getAttachNo() {
		return attachNo;
	}
	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}
	public int getAttachBbsNo() {
		return attachBbsNo;
	}
	public void setAttachBbsNo(int attachBbsNo) {
		this.attachBbsNo = attachBbsNo;
	}
	public String getAttachOriginalFile() {
		return attachOriginalFile;
	}
	public void setAttachOriginalFile(String attachOriginalFile) {
		this.attachOriginalFile = attachOriginalFile;
	}
	public String getAttachSavedFile() {
		return attachSavedFile;
	}
	public void setAttachSavedFile(String attachSavedFile) {
		this.attachSavedFile = attachSavedFile;
	}
	
	@Override
	public String toString() {
		return "BbsAttach [attachNo=" + attachNo + ", attachBbsNo=" + attachBbsNo + ", attachOriginalFile="
				+ attachOriginalFile + ", attachSavedFile=" + attachSavedFile + "]";
	}
}
