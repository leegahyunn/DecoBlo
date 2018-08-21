package com.decoblog.www.user.vo;

public class Subscribe {
	private int subNo;
	private int subSendUser;
	private int subRecieveUser;
	private String subRegDate;
	public Subscribe() {
	}
	public Subscribe(int subNo, int subSendUser, int subRecieveUser, String subRegDate) {
		this.subNo = subNo;
		this.subSendUser = subSendUser;
		this.subRecieveUser = subRecieveUser;
		this.subRegDate = subRegDate;
	}
	public int getSubNo() {
		return subNo;
	}
	public void setSubNo(int subNo) {
		this.subNo = subNo;
	}
	public int getSubSendUser() {
		return subSendUser;
	}
	public void setSubSendUser(int subSendUser) {
		this.subSendUser = subSendUser;
	}
	public int getSubRecieveUser() {
		return subRecieveUser;
	}
	public void setSubRecieveUser(int subRecieveUser) {
		this.subRecieveUser = subRecieveUser;
	}
	public String getSubRegDate() {
		return subRegDate;
	}
	public void setSubRegDate(String subRegDate) {
		this.subRegDate = subRegDate;
	}
	@Override
	public String toString() {
		return "Subscribe [subNo=" + subNo + ", subSendUser=" + subSendUser + ", subRecieveUser=" + subRecieveUser
				+ ", subRegDate=" + subRegDate + "]";
	}
}
