package com.decoblog.www.bbs.vo;

public class Reply {
	private int replyNo;
	private int replyBbsNo;
	private String replyContent;
	private int replyParent;
	private int replyDepth;
	private int replySeq;
	private String replyRegDate;
	private int replyRegUser;
	private String replyEditDate;
	private int replyEditUser;
	public Reply() {
	}
	public Reply(int replyNo, int replyBbsNo, String replyContent, int replyParent, int replyDepth, int replySeq,
			String replyRegDate, int replyRegUser, String replyEditDate, int replyEditUser) {
		this.replyNo = replyNo;
		this.replyBbsNo = replyBbsNo;
		this.replyContent = replyContent;
		this.replyParent = replyParent;
		this.replyDepth = replyDepth;
		this.replySeq = replySeq;
		this.replyRegDate = replyRegDate;
		this.replyRegUser = replyRegUser;
		this.replyEditDate = replyEditDate;
		this.replyEditUser = replyEditUser;
	}
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getReplyBbsNo() {
		return replyBbsNo;
	}
	public void setReplyBbsNo(int replyBbsNo) {
		this.replyBbsNo = replyBbsNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public int getReplyParent() {
		return replyParent;
	}
	public void setReplyParent(int replyParent) {
		this.replyParent = replyParent;
	}
	public int getReplyDepth() {
		return replyDepth;
	}
	public void setReplyDepth(int replyDepth) {
		this.replyDepth = replyDepth;
	}
	public int getReplySeq() {
		return replySeq;
	}
	public void setReplySeq(int replySeq) {
		this.replySeq = replySeq;
	}
	public String getReplyRegDate() {
		return replyRegDate;
	}
	public void setReplyRegDate(String replyRegDate) {
		this.replyRegDate = replyRegDate;
	}
	public int getReplyRegUser() {
		return replyRegUser;
	}
	public void setReplyRegUser(int replyRegUser) {
		this.replyRegUser = replyRegUser;
	}
	public String getReplyEditDate() {
		return replyEditDate;
	}
	public void setReplyEditDate(String replyEditDate) {
		this.replyEditDate = replyEditDate;
	}
	public int getReplyEditUser() {
		return replyEditUser;
	}
	public void setReplyEditUser(int replyEditUser) {
		this.replyEditUser = replyEditUser;
	}
	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyBbsNo=" + replyBbsNo + ", replyContent=" + replyContent
				+ ", replyParent=" + replyParent + ", replyDepth=" + replyDepth + ", replySeq=" + replySeq
				+ ", replyRegDate=" + replyRegDate + ", replyRegUser=" + replyRegUser + ", replyEditDate="
				+ replyEditDate + ", replyEditUser=" + replyEditUser + "]";
	}
}
