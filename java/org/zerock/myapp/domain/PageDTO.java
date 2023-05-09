package org.zerock.myapp.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageDTO {
	
	private Criteria cri;

	private int totalAmount;

	private int startPage;
	private int endPage;
	private int realEndPage;

	private int offset;

	private boolean prev;
	private boolean next;

	public PageDTO(Criteria cri, int totalAmount) {
		this.cri = cri;

		this.totalAmount = totalAmount;

		int currPage = cri.getCurrPage();
		int amount = cri.getAmount();
		int pagesPerPage = cri.getPagesPerPage();

		this.endPage = (int) Math.ceil( (currPage * 1.0) / pagesPerPage) * pagesPerPage;

		this.startPage = this.endPage - ( pagesPerPage - 1 );

		this.realEndPage = (int) Math.ceil( (totalAmount * 1.0) / amount);
 
		if(this.realEndPage < this.endPage) {
			this.endPage = this. realEndPage;
		} // if

		this.prev = this.startPage > 1;

		this.next = this.endPage < realEndPage;

		this.offset = ( currPage -1 ) + amount;

	} // PageDTO(cri,total)
} // end class
