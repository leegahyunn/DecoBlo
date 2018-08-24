package com.decoblog.www.blog.vo;

public class Template {
	private int templateNo;
	private String templateTitle;
	private String templateMenu;
	public Template() {
	}
	public Template(int templateNo, String templateTitle, String templateMenu) {
		this.templateNo = templateNo;
		this.templateTitle = templateTitle;
		this.templateMenu = templateMenu;
	}
	public int getTemplateNo() {
		return templateNo;
	}
	public void setTemplateNo(int templateNo) {
		this.templateNo = templateNo;
	}
	public String getTemplateTitle() {
		return templateTitle;
	}
	public void setTemplateTitle(String templateTitle) {
		this.templateTitle = templateTitle;
	}
	public String getTemplateMenu() {
		return templateMenu;
	}
	public void setTemplateMenu(String templateMenu) {
		this.templateMenu = templateMenu;
	}
	@Override
	public String toString() {
		return "Template [templateNo=" + templateNo + ", templateTitle=" + templateTitle + ", templateMenu="
				+ templateMenu + "]";
	}
}
