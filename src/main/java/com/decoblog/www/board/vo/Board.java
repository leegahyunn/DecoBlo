package com.decoblog.www.board.vo;

public class Board {
	private int boardNo;
	private int boardBlockNo;
	private int boardBlockTmpNo;
	private int boardInitNDisplay;
	private int boardDisplayedNo;
	private int boardDisplayedTitle;
	private int boardDisplayedContent;
	private int boardDisplayedAuthor;
	private int boardDisplayedDate;
	private int boardDisplayedHit;
	private int boardDisplayedLike;
	private int boardDisplayedComment;
	private int boardDisplayedBottomList;
	private int boardDisplayedSearch;
	private int boardDisplayedThumbnails;
	private String boardDateForm;

	public Board() {
	}

	public Board(int boardNo, int boardBlockNo, int boardBlockTmpNo, int boardInitNDisplay, int boardDisplayedNo,
			int boardDisplayedTitle, int boardDisplayedContent, int boardDisplayedAuthor, int boardDisplayedDate,
			int boardDisplayedHit, int boardDisplayedLike, int boardDisplayedComment, int boardDisplayedBottomList,
			int boardDisplayedSearch, int boardDisplayedThumbnails, String boardDateForm) {
		this.boardNo = boardNo;
		this.boardBlockNo = boardBlockNo;
		this.boardBlockTmpNo = boardBlockTmpNo;
		this.boardInitNDisplay = boardInitNDisplay;
		this.boardDisplayedNo = boardDisplayedNo;
		this.boardDisplayedTitle = boardDisplayedTitle;
		this.boardDisplayedContent = boardDisplayedContent;
		this.boardDisplayedAuthor = boardDisplayedAuthor;
		this.boardDisplayedDate = boardDisplayedDate;
		this.boardDisplayedHit = boardDisplayedHit;
		this.boardDisplayedLike = boardDisplayedLike;
		this.boardDisplayedComment = boardDisplayedComment;
		this.boardDisplayedBottomList = boardDisplayedBottomList;
		this.boardDisplayedSearch = boardDisplayedSearch;
		this.boardDisplayedThumbnails = boardDisplayedThumbnails;
		this.boardDateForm = boardDateForm;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getBoardBlockNo() {
		return boardBlockNo;
	}

	public void setBoardBlockNo(int boardBlockNo) {
		this.boardBlockNo = boardBlockNo;
	}

	public int getBoardBlockTmpNo() {
		return boardBlockTmpNo;
	}

	public void setBoardBlockTmpNo(int boardBlockTmpNo) {
		this.boardBlockTmpNo = boardBlockTmpNo;
	}

	public int getBoardInitNDisplay() {
		return boardInitNDisplay;
	}

	public void setBoardInitNDisplay(int boardInitNDisplay) {
		this.boardInitNDisplay = boardInitNDisplay;
	}

	public int getBoardDisplayedNo() {
		return boardDisplayedNo;
	}

	public void setBoardDisplayedNo(int boardDisplayedNo) {
		this.boardDisplayedNo = boardDisplayedNo;
	}

	public int getBoardDisplayedTitle() {
		return boardDisplayedTitle;
	}

	public void setBoardDisplayedTitle(int boardDisplayedTitle) {
		this.boardDisplayedTitle = boardDisplayedTitle;
	}

	public int getBoardDisplayedContent() {
		return boardDisplayedContent;
	}

	public void setBoardDisplayedContent(int boardDisplayedContent) {
		this.boardDisplayedContent = boardDisplayedContent;
	}

	public int getBoardDisplayedAuthor() {
		return boardDisplayedAuthor;
	}

	public void setBoardDisplayedAuthor(int boardDisplayedAuthor) {
		this.boardDisplayedAuthor = boardDisplayedAuthor;
	}

	public int getBoardDisplayedDate() {
		return boardDisplayedDate;
	}

	public void setBoardDisplayedDate(int boardDisplayedDate) {
		this.boardDisplayedDate = boardDisplayedDate;
	}

	public int getBoardDisplayedHit() {
		return boardDisplayedHit;
	}

	public void setBoardDisplayedHit(int boardDisplayedHit) {
		this.boardDisplayedHit = boardDisplayedHit;
	}

	public int getBoardDisplayedLike() {
		return boardDisplayedLike;
	}

	public void setBoardDisplayedLike(int boardDisplayedLike) {
		this.boardDisplayedLike = boardDisplayedLike;
	}

	public int getBoardDisplayedComment() {
		return boardDisplayedComment;
	}

	public void setBoardDisplayedComment(int boardDisplayedComment) {
		this.boardDisplayedComment = boardDisplayedComment;
	}

	public int getBoardDisplayedBottomList() {
		return boardDisplayedBottomList;
	}

	public void setBoardDisplayedBottomList(int boardDisplayedBottomList) {
		this.boardDisplayedBottomList = boardDisplayedBottomList;
	}

	public int getBoardDisplayedSearch() {
		return boardDisplayedSearch;
	}

	public void setBoardDisplayedSearch(int boardDisplayedSearch) {
		this.boardDisplayedSearch = boardDisplayedSearch;
	}

	public int getBoardDisplayedThumbnails() {
		return boardDisplayedThumbnails;
	}

	public void setBoardDisplayedThumbnails(int boardDisplayedThumbnails) {
		this.boardDisplayedThumbnails = boardDisplayedThumbnails;
	}

	public String getBoardDateForm() {
		return boardDateForm;
	}

	public void setBoardDateForm(String boardDateForm) {
		this.boardDateForm = boardDateForm;
	}

	@Override
	public String toString() {
		return "BbsBoard [boardNo=" + boardNo + ", boardBlockNo=" + boardBlockNo + ", boardBlockTmpNo="
				+ boardBlockTmpNo + ", boardInitNDisplay=" + boardInitNDisplay + ", boardDisplayedNo="
				+ boardDisplayedNo + ", boardDisplayedTitle=" + boardDisplayedTitle + ", boardDisplayedContent="
				+ boardDisplayedContent + ", boardDisplayedAuthor=" + boardDisplayedAuthor + ", boardDisplayedDate="
				+ boardDisplayedDate + ", boardDisplayedHit=" + boardDisplayedHit + ", boardDisplayedLike="
				+ boardDisplayedLike + ", boardDisplayedComment=" + boardDisplayedComment
				+ ", boardDisplayedBottomList=" + boardDisplayedBottomList + ", boardDisplayedSearch="
				+ boardDisplayedSearch + ", boardDisplayedThumbnails=" + boardDisplayedThumbnails + ", boardDateForm="
				+ boardDateForm + "]";
	}

}
