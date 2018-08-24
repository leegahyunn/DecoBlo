package com.decoblog.www.blog.vo;

public class Menu {
	private int menuNo;
	private int menuUserNo;
	private String menuName;
	private int menuParent;
	private int menuDepth;
	private int menuSeq;
	private int menuVisible;
	private String menuLink;
	private int menuParentSeq;
	
	public Menu() {
	}

	public Menu(int menuNo, int menuUserNo, String menuName, int menuParent, int menuDepth, int menuSeq,
			int menuVisible, String menuLink, int menuParentSeq) {
		super();
		this.menuNo = menuNo;
		this.menuUserNo = menuUserNo;
		this.menuName = menuName;
		this.menuParent = menuParent;
		this.menuDepth = menuDepth;
		this.menuSeq = menuSeq;
		this.menuVisible = menuVisible;
		this.menuLink = menuLink;
		this.menuParentSeq = menuParentSeq;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public int getMenuUserNo() {
		return menuUserNo;
	}

	public void setMenuUserNo(int menuUserNo) {
		this.menuUserNo = menuUserNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuParent() {
		return menuParent;
	}

	public void setMenuParent(int menuParent) {
		this.menuParent = menuParent;
	}

	public int getMenuDepth() {
		return menuDepth;
	}

	public void setMenuDepth(int menuDepth) {
		this.menuDepth = menuDepth;
	}

	public int getMenuSeq() {
		return menuSeq;
	}

	public void setMenuSeq(int menuSeq) {
		this.menuSeq = menuSeq;
	}

	public int getMenuVisible() {
		return menuVisible;
	}

	public void setMenuVisible(int menuVisible) {
		this.menuVisible = menuVisible;
	}

	public String getMenuLink() {
		return menuLink;
	}

	public void setMenuLink(String menuLink) {
		this.menuLink = menuLink;
	}

	public int getMenuParentSeq() {
		return menuParentSeq;
	}

	public void setMenuParentSeq(int menuParentSeq) {
		this.menuParentSeq = menuParentSeq;
	}

	@Override
	public String toString() {
		return "Menu [menuNo=" + menuNo + ", menuUserNo=" + menuUserNo + ", menuName=" + menuName + ", menuParent="
				+ menuParent + ", menuDepth=" + menuDepth + ", menuSeq=" + menuSeq + ", menuVisible=" + menuVisible
				+ ", menuLink=" + menuLink + ", menuParentSeq=" + menuParentSeq + "]";
	}
	
}
