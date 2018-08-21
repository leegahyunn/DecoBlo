package com.decoblog.www.stat.vo;

public class Stat {
	private int statNo;
	private int statUserNo;
	private int statBlogCount;
	private int statBbsCount;
	private int statReplyCount;
	private int statSubscribe;
	private String statRegDate;
	public Stat() {
	}
	public Stat(int statNo, int statUserNo, int statBlogCount, int statBbsCount, int statReplyCount, int statSubscribe,
			String statRegDate) {
		this.statNo = statNo;
		this.statUserNo = statUserNo;
		this.statBlogCount = statBlogCount;
		this.statBbsCount = statBbsCount;
		this.statReplyCount = statReplyCount;
		this.statSubscribe = statSubscribe;
		this.statRegDate = statRegDate;
	}
	public int getStatNo() {
		return statNo;
	}
	public void setStatNo(int statNo) {
		this.statNo = statNo;
	}
	public int getStatUserNo() {
		return statUserNo;
	}
	public void setStatUserNo(int statUserNo) {
		this.statUserNo = statUserNo;
	}
	public int getStatBlogCount() {
		return statBlogCount;
	}
	public void setStatBlogCount(int statBlogCount) {
		this.statBlogCount = statBlogCount;
	}
	public int getStatBbsCount() {
		return statBbsCount;
	}
	public void setStatBbsCount(int statBbsCount) {
		this.statBbsCount = statBbsCount;
	}
	public int getStatReplyCount() {
		return statReplyCount;
	}
	public void setStatReplyCount(int statReplyCount) {
		this.statReplyCount = statReplyCount;
	}
	public int getStatSubscribe() {
		return statSubscribe;
	}
	public void setStatSubscribe(int statSubscribe) {
		this.statSubscribe = statSubscribe;
	}
	public String getStatRegDate() {
		return statRegDate;
	}
	public void setStatRegDate(String statRegDate) {
		this.statRegDate = statRegDate;
	}
	@Override
	public String toString() {
		return "Stat [statNo=" + statNo + ", statUserNo=" + statUserNo + ", statBlogCount=" + statBlogCount
				+ ", statBbsCount=" + statBbsCount + ", statReplyCount=" + statReplyCount + ", statSubscribe="
				+ statSubscribe + ", statRegDate=" + statRegDate + "]";
	}
}
