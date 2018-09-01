package com.decoblog.www.user.vo;

public class User {
	private int userNo;
	private String userEmail;
	private String userName;
	private String userNickName = "";
	private String userPassword;
	private String userTmpPassword;
	private String userInfo = "";
	private String userProileOriinalName;
	private String userProfileSavedName;
	private String blogTitle;
	private String blogAddress = "";
	private int blogCount;
	private String blogRegDate;
	private int configRightClickable;
	private String configBasicFont;
	private String configBackgroundColor;
	private String configBackgroundOriginFile;
	private String configBackgroundSavedFile;
	private String fabiconOriginalFile;
	private String fabiconSavedFile;
	private String defaultCssFile;
	private String defaultJsFile;
	private String metaAuthor;
	private String metaKeyword;
	private String metaDescription;
	private String userRegdate;
	public User() {
	}
	public User(int userNo, String userEmail, String userName, String userNickName, String userPassword,
			String userTmpPassword, String userInfo, String userProileOriinalName, String userProfileSavedName,
			String blogTitle, String blogAddress, int blogCount, String blogRegDate, int configRightClickable,
			String configBasicFont, String configBackgroundColor, String configBackgroundOriginFile,
			String configBackgroundSavedFile, String fabiconOriginalFile, String fabiconSavedFile,
			String defaultCssFile, String defaultJsFile, String metaAuthor, String metaKeyword, String metaDescription,
			String userRegdate) {
		this.userNo = userNo;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userNickName = userNickName;
		this.userPassword = userPassword;
		this.userTmpPassword = userTmpPassword;
		this.userInfo = userInfo;
		this.userProileOriinalName = userProileOriinalName;
		this.userProfileSavedName = userProfileSavedName;
		this.blogTitle = blogTitle;
		this.blogAddress = blogAddress;
		this.blogCount = blogCount;
		this.blogRegDate = blogRegDate;
		this.configRightClickable = configRightClickable;
		this.configBasicFont = configBasicFont;
		this.configBackgroundColor = configBackgroundColor;
		this.configBackgroundOriginFile = configBackgroundOriginFile;
		this.configBackgroundSavedFile = configBackgroundSavedFile;
		this.fabiconOriginalFile = fabiconOriginalFile;
		this.fabiconSavedFile = fabiconSavedFile;
		this.defaultCssFile = defaultCssFile;
		this.defaultJsFile = defaultJsFile;
		this.metaAuthor = metaAuthor;
		this.metaKeyword = metaKeyword;
		this.metaDescription = metaDescription;
		this.userRegdate = userRegdate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserTmpPassword() {
		return userTmpPassword;
	}
	public void setUserTmpPassword(String userTmpPassword) {
		this.userTmpPassword = userTmpPassword;
	}
	public String getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(String userInfo) {
		this.userInfo = userInfo;
	}
	public String getUserProileOriinalName() {
		return userProileOriinalName;
	}
	public void setUserProileOriinalName(String userProileOriinalName) {
		this.userProileOriinalName = userProileOriinalName;
	}
	public String getUserProfileSavedName() {
		return userProfileSavedName;
	}
	public void setUserProfileSavedName(String userProfileSavedName) {
		this.userProfileSavedName = userProfileSavedName;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogAddress() {
		return blogAddress;
	}
	public void setBlogAddress(String blogAddress) {
		this.blogAddress = blogAddress;
	}
	public int getBlogCount() {
		return blogCount;
	}
	public void setBlogCount(int blogCount) {
		this.blogCount = blogCount;
	}
	public String getBlogRegDate() {
		return blogRegDate;
	}
	public void setBlogRegDate(String blogRegDate) {
		this.blogRegDate = blogRegDate;
	}
	public int getConfigRightClickable() {
		return configRightClickable;
	}
	public void setConfigRightClickable(int configRightClickable) {
		this.configRightClickable = configRightClickable;
	}
	public String getConfigBasicFont() {
		return configBasicFont;
	}
	public void setConfigBasicFont(String configBasicFont) {
		this.configBasicFont = configBasicFont;
	}
	public String getConfigBackgroundColor() {
		return configBackgroundColor;
	}
	public void setConfigBackgroundColor(String configBackgroundColor) {
		this.configBackgroundColor = configBackgroundColor;
	}
	public String getConfigBackgroundOriginFile() {
		return configBackgroundOriginFile;
	}
	public void setConfigBackgroundOriginFile(String configBackgroundOriginFile) {
		this.configBackgroundOriginFile = configBackgroundOriginFile;
	}
	public String getConfigBackgroundSavedFile() {
		return configBackgroundSavedFile;
	}
	public void setConfigBackgroundSavedFile(String configBackgroundSavedFile) {
		this.configBackgroundSavedFile = configBackgroundSavedFile;
	}
	public String getFabiconOriginalFile() {
		return fabiconOriginalFile;
	}
	public void setFabiconOriginalFile(String fabiconOriginalFile) {
		this.fabiconOriginalFile = fabiconOriginalFile;
	}
	public String getFabiconSavedFile() {
		return fabiconSavedFile;
	}
	public void setFabiconSavedFile(String fabiconSavedFile) {
		this.fabiconSavedFile = fabiconSavedFile;
	}
	public String getDefaultCssFile() {
		return defaultCssFile;
	}
	public void setDefaultCssFile(String defaultCssFile) {
		this.defaultCssFile = defaultCssFile;
	}
	public String getDefaultJsFile() {
		return defaultJsFile;
	}
	public void setDefaultJsFile(String defaultJsFile) {
		this.defaultJsFile = defaultJsFile;
	}
	public String getMetaAuthor() {
		return metaAuthor;
	}
	public void setMetaAuthor(String metaAuthor) {
		this.metaAuthor = metaAuthor;
	}
	public String getMetaKeyword() {
		return metaKeyword;
	}
	public void setMetaKeyword(String metaKeyword) {
		this.metaKeyword = metaKeyword;
	}
	public String getMetaDescription() {
		return metaDescription;
	}
	public void setMetaDescription(String metaDescription) {
		this.metaDescription = metaDescription;
	}
	public String getUserRegdate() {
		return userRegdate;
	}
	public void setUserRegdate(String userRegdate) {
		this.userRegdate = userRegdate;
	}
	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userEmail=" + userEmail + ", userName=" + userName + ", userNickName="
				+ userNickName + ", userPassword=" + userPassword + ", userTmpPassword=" + userTmpPassword
				+ ", userInfo=" + userInfo + ", userProileOriinalName=" + userProileOriinalName
				+ ", userProfileSavedName=" + userProfileSavedName + ", blogTitle=" + blogTitle + ", blogAddress="
				+ blogAddress + ", blogCount=" + blogCount + ", blogRegDate=" + blogRegDate + ", configRightClickable="
				+ configRightClickable + ", configBasicFont=" + configBasicFont + ", configBackgroundColor="
				+ configBackgroundColor + ", configBackgroundOriginFile=" + configBackgroundOriginFile
				+ ", configBackgroundSavedFile=" + configBackgroundSavedFile + ", fabiconOriginalFile="
				+ fabiconOriginalFile + ", fabiconSavedFile=" + fabiconSavedFile + ", defaultCssFile=" + defaultCssFile
				+ ", defaultJsFile=" + defaultJsFile + ", metaAuthor=" + metaAuthor + ", metaKeyword=" + metaKeyword
				+ ", metaDescription=" + metaDescription + ", userRegdate=" + userRegdate + "]";
	}
}
