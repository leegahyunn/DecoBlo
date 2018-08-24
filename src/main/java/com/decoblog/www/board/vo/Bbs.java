package com.decoblog.www.board.vo;

public class Bbs {
	private int bbsNo;
	private int boardNo;
	private String bbsTitle;
	private String bbsContent;
	private int bbsCount;
	private int bbsLike;
	private int bbsParent;
	private int bbsDepth;
	private int bbsSeq;
	private String bbsRegDate;
	private String bbsEditDate;

	public Bbs() {
	}

	public Bbs(int bbsNo, int boardNo, String bbsTitle, String bbsContent, int bbsCount, int bbsLike, int bbsParent,
			int bbsDepth, int bbsSeq, String bbsRegDate, String bbsEditDate) {
		this.bbsNo = bbsNo;
		this.boardNo = boardNo;
		this.bbsTitle = bbsTitle;
		this.bbsContent = bbsContent;
		this.bbsCount = bbsCount;
		this.bbsLike = bbsLike;
		this.bbsParent = bbsParent;
		this.bbsDepth = bbsDepth;
		this.bbsSeq = bbsSeq;
		this.bbsRegDate = bbsRegDate;
		this.bbsEditDate = bbsEditDate;
	}

	public int getBbsNo() {
		return bbsNo;
	}

	public void setBbsNo(int bbsNo) {
		this.bbsNo = bbsNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}

	public int getBbsCount() {
		return bbsCount;
	}

	public void setBbsCount(int bbsCount) {
		this.bbsCount = bbsCount;
	}

	public int getBbsLike() {
		return bbsLike;
	}

	public void setBbsLike(int bbsLike) {
		this.bbsLike = bbsLike;
	}

	public int getBbsParent() {
		return bbsParent;
	}

	public void setBbsParent(int bbsParent) {
		this.bbsParent = bbsParent;
	}

	public int getBbsDepth() {
		return bbsDepth;
	}

	public void setBbsDepth(int bbsDepth) {
		this.bbsDepth = bbsDepth;
	}

	public int getBbsSeq() {
		return bbsSeq;
	}

	public void setBbsSeq(int bbsSeq) {
		this.bbsSeq = bbsSeq;
	}

	public String getBbsRegDate() {
		return bbsRegDate;
	}

	public void setBbsRegDate(String bbsRegDate) {
		this.bbsRegDate = bbsRegDate;
	}

	public String getBbsEditDate() {
		return bbsEditDate;
	}

	public void setBbsEditDate(String bbsEditDate) {
		this.bbsEditDate = bbsEditDate;
	}

	@Override
	public String toString() {
		return "Bbs [bbsNo=" + bbsNo + ", boardNo=" + boardNo + ", bbsTitle=" + bbsTitle + ", bbsContent=" + bbsContent
				+ ", bbsCount=" + bbsCount + ", bbsLike=" + bbsLike + ", bbsParent=" + bbsParent + ", bbsDepth="
				+ bbsDepth + ", bbsSeq=" + bbsSeq + ", bbsRegDate=" + bbsRegDate + ", bbsEditDate=" + bbsEditDate + "]";
	}

}
