package com.decoblog.www.blog.vo;

public class Template {
	private int templateNo;
	private String templateTitle;
	public Template() {
	}
	public Template(int templateNo, String templateTitle) {
		this.templateNo = templateNo;
		this.templateTitle = templateTitle;
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
	@Override
	public String toString() {
		return "Template [templateNo=" + templateNo + ", templateTitle=" + templateTitle + "]";
	}
}
