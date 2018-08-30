package com.decoblog.www.board.vo;

public class PageNavigator {
	// currentPage,totalRecordCount는 외부에서 받아와야한다
	
	//	멤버 선언
	private final int COUNT_PER_PAGE = 10; 	// 페이지 당 레코드 수
	private final int PAGE_PER_GROUP = 5; 	// 그룹 당 페이지 수
	private int currentPage;				// 현재 페이지
	private int totalRecordCount;			// 전체 레코드 수 단지 계산해주는 거
	private int totalPageCount;				// 전체 페이지 수
	private int currentGroup;				// 현재 그룹
	private int startPageGroup;				// 현재 그룹의 시작 페이지
	private int endPageGroup;				// 현재 그룹의 끝 페이지
	private int startRecord;				// 전체 레코드 중 현재 페이지의 첫 글


	// 생성자 선언
	public PageNavigator(int currentPage, int totalRecordCount) {
							//currentPage= 외부에서 받은 currentPage
		this.totalRecordCount = totalRecordCount;
		
		// 전체 페이지 수 계산
		totalPageCount = (totalRecordCount + COUNT_PER_PAGE - 1 )/COUNT_PER_PAGE;
				
		// <를 눌러서 앞페이지 요청할 경우, currentPage가 1페이지 미만
		if(currentPage < 1 ) currentPage = 1;
		// >를 눌러서 뒤페이지 요청할 경우, 마지막 페이지가 currentPage
		if(currentPage > totalPageCount) currentPage = totalPageCount;
		this.currentPage = currentPage;
		
		// 현재 그룹 계산
		// 만약 currentPage가 4일 경우, 4-1 / 5 = 0 이므로 0그룹. PAGE_PER_GROUP은 5. 상수
		currentGroup = (currentPage - 1) / PAGE_PER_GROUP;
		
		// 현재 그룹의 첫 페이지, 마지막페이지, 첫 레코드 번호 계산
		startPageGroup = currentGroup * PAGE_PER_GROUP + 1 ;
		endPageGroup = startPageGroup + PAGE_PER_GROUP - 1;
			// 현재 그룹의 마지막 페이지가 전체 페이지보다 작을 경우
		endPageGroup = endPageGroup > totalPageCount ?  totalPageCount : endPageGroup;
	
		startRecord = (currentPage - 1) * COUNT_PER_PAGE;
		
	}

	

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentGroup() {
		return currentGroup;
	}

	public void setCurrentGroup(int currentGroup) {
		this.currentGroup = currentGroup;
	}

	public int getStartPageGroup() {
		return startPageGroup;
	}

	public void setStartPageGroup(int startPageGroup) {
		this.startPageGroup = startPageGroup;
	}

	public int getEndPageGroup() {
		return endPageGroup;
	}

	public void setEndPageGroup(int endPageGroup) {
		this.endPageGroup = endPageGroup;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	public int getCountPerPage() {
		return COUNT_PER_PAGE;
	}

	public int getPagePerGroup() {
		return PAGE_PER_GROUP;
	}

	@Override
	public String toString() {
		return "PageNavigator [COUNT_PER_PAGE=" + COUNT_PER_PAGE + ", PAGE_PER_GROUP=" + PAGE_PER_GROUP + ", currentPage="
				+ currentPage + ", totalRecordCount=" + totalRecordCount + ", totalPageCount=" + totalPageCount
				+ ", currentGroup=" + currentGroup + ", startPageGroup=" + startPageGroup + ", endPageGroup="
				+ endPageGroup + ", startRecord=" + startRecord + "]";
	}
	
}
