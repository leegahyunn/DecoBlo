package com.decoblog.www.blog.vo;

public class Block {
	private int blockNo;
	private int blockMenuNo;
	private int blockTmpNo;
	private int blockSeq;
	private String blockContent;
	private int blockBackgroundno;
	private String blockCss;
	public Block() {
		// TODO Auto-generated constructor stub
	}
	public Block(int blockNo, int blockMenuNo, int blockTmpNo, int blockSeq, String blockContent, int blockBackgroundno,
			String blockCss) {
		super();
		this.blockNo = blockNo;
		this.blockMenuNo = blockMenuNo;
		this.blockTmpNo = blockTmpNo;
		this.blockSeq = blockSeq;
		this.blockContent = blockContent;
		this.blockBackgroundno = blockBackgroundno;
		this.blockCss = blockCss;
	}
	public int getBlockNo() {
		return blockNo;
	}
	public void setBlockNo(int blockNo) {
		this.blockNo = blockNo;
	}
	public int getBlockMenuNo() {
		return blockMenuNo;
	}
	public void setBlockMenuNo(int blockMenuNo) {
		this.blockMenuNo = blockMenuNo;
	}
	public int getBlockTmpNo() {
		return blockTmpNo;
	}
	public void setBlockTmpNo(int blockTmpNo) {
		this.blockTmpNo = blockTmpNo;
	}
	public int getBlockSeq() {
		return blockSeq;
	}
	public void setBlockSeq(int blockSeq) {
		this.blockSeq = blockSeq;
	}
	public String getBlockContent() {
		return blockContent;
	}
	public void setBlockContent(String blockContent) {
		this.blockContent = blockContent;
	}
	public int getBlockBackgroundno() {
		return blockBackgroundno;
	}
	public void setBlockBackgroundno(int blockBackgroundno) {
		this.blockBackgroundno = blockBackgroundno;
	}
	public String getBlockCss() {
		return blockCss;
	}
	public void setBlockCss(String blockCss) {
		this.blockCss = blockCss;
	}
	@Override
	public String toString() {
		return "Block [blockNo=" + blockNo + ", blockMenuNo=" + blockMenuNo + ", blockTmpNo=" + blockTmpNo
				+ ", blockSeq=" + blockSeq + ", blockContent=" + blockContent + ", blockBackgroundno="
				+ blockBackgroundno + ", blockCss=" + blockCss + "]";
	}
	
}
