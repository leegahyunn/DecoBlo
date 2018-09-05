package com.decoblog.www.board.vo;

public class Like {

	public int likeNo;
	public int likeUserNo;
	public int likeBbsNo;

	public Like() {
		super();
	}

	public Like(int likeNo, int likeUserNo, int likeBbsNo) {
		super();
		this.likeNo = likeNo;
		this.likeUserNo = likeUserNo;
		this.likeBbsNo = likeBbsNo;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getLikeUserNo() {
		return likeUserNo;
	}

	public void setLikeUserNo(int likeUserNo) {
		this.likeUserNo = likeUserNo;
	}

	public int getLikeBbsNo() {
		return likeBbsNo;
	}

	public void setLikeBbsNo(int likeBbsNo) {
		this.likeBbsNo = likeBbsNo;
	}

	@Override
	public String toString() {
		return "Like [likeNo=" + likeNo + ", likeUserNo=" + likeUserNo + ", likeBbsNo=" + likeBbsNo + "]";
	}

}
