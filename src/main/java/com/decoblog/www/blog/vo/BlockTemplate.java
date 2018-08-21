package com.decoblog.www.blog.vo;

public class BlockTemplate {
	private int blockTmpNo;
	private int blockTemplateNo;
	private String blockTmpType;
	private String blockTmpContent;
	private int blockTmpNImages;
	private int blockTmpHasLine;
	private int blockTmpHasButton;
	private int blockTmpHasRollingIndex;
	private int blockTmpHasContentBox;
	private int blockTmpHasContentList;
	private int blockTmpNContents;
	public BlockTemplate() {
	}
	public BlockTemplate(int blockTmpNo, int blockTemplateNo, String blockTmpType, String blockTmpContent,
			int blockTmpNImages, int blockTmpHasLine, int blockTmpHasButton, int blockTmpHasRollingIndex,
			int blockTmpHasContentBox, int blockTmpHasContentList, int blockTmpNContents) {
		this.blockTmpNo = blockTmpNo;
		this.blockTemplateNo = blockTemplateNo;
		this.blockTmpType = blockTmpType;
		this.blockTmpContent = blockTmpContent;
		this.blockTmpNImages = blockTmpNImages;
		this.blockTmpHasLine = blockTmpHasLine;
		this.blockTmpHasButton = blockTmpHasButton;
		this.blockTmpHasRollingIndex = blockTmpHasRollingIndex;
		this.blockTmpHasContentBox = blockTmpHasContentBox;
		this.blockTmpHasContentList = blockTmpHasContentList;
		this.blockTmpNContents = blockTmpNContents;
	}
	public int getBlockTmpNo() {
		return blockTmpNo;
	}
	public void setBlockTmpNo(int blockTmpNo) {
		this.blockTmpNo = blockTmpNo;
	}
	public int getBlockTemplateNo() {
		return blockTemplateNo;
	}
	public void setBlockTemplateNo(int blockTemplateNo) {
		this.blockTemplateNo = blockTemplateNo;
	}
	public String getBlockTmpType() {
		return blockTmpType;
	}
	public void setBlockTmpType(String blockTmpType) {
		this.blockTmpType = blockTmpType;
	}
	public String getBlockTmpContent() {
		return blockTmpContent;
	}
	public void setBlockTmpContent(String blockTmpContent) {
		this.blockTmpContent = blockTmpContent;
	}
	public int getBlockTmpNImages() {
		return blockTmpNImages;
	}
	public void setBlockTmpNImages(int blockTmpNImages) {
		this.blockTmpNImages = blockTmpNImages;
	}
	public int getBlockTmpHasLine() {
		return blockTmpHasLine;
	}
	public void setBlockTmpHasLine(int blockTmpHasLine) {
		this.blockTmpHasLine = blockTmpHasLine;
	}
	public int getBlockTmpHasButton() {
		return blockTmpHasButton;
	}
	public void setBlockTmpHasButton(int blockTmpHasButton) {
		this.blockTmpHasButton = blockTmpHasButton;
	}
	public int getBlockTmpHasRollingIndex() {
		return blockTmpHasRollingIndex;
	}
	public void setBlockTmpHasRollingIndex(int blockTmpHasRollingIndex) {
		this.blockTmpHasRollingIndex = blockTmpHasRollingIndex;
	}
	public int getBlockTmpHasContentBox() {
		return blockTmpHasContentBox;
	}
	public void setBlockTmpHasContentBox(int blockTmpHasContentBox) {
		this.blockTmpHasContentBox = blockTmpHasContentBox;
	}
	public int getBlockTmpHasContentList() {
		return blockTmpHasContentList;
	}
	public void setBlockTmpHasContentList(int blockTmpHasContentList) {
		this.blockTmpHasContentList = blockTmpHasContentList;
	}
	public int getBlockTmpNContents() {
		return blockTmpNContents;
	}
	public void setBlockTmpNContents(int blockTmpNContents) {
		this.blockTmpNContents = blockTmpNContents;
	}
	@Override
	public String toString() {
		return "BlockTemplate [blockTmpNo=" + blockTmpNo + ", blockTemplateNo=" + blockTemplateNo + ", blockTmpType="
				+ blockTmpType + ", blockTmpContent=" + blockTmpContent + ", blockTmpNImages=" + blockTmpNImages
				+ ", blockTmpHasLine=" + blockTmpHasLine + ", blockTmpHasButton=" + blockTmpHasButton
				+ ", blockTmpHasRollingIndex=" + blockTmpHasRollingIndex + ", blockTmpHasContentBox="
				+ blockTmpHasContentBox + ", blockTmpHasContentList=" + blockTmpHasContentList + ", blockTmpNContents="
				+ blockTmpNContents + "]";
	}
}
