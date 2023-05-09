package org.zerock.myapp.domain;

import lombok.Data;

@Data
public class Criteria {
	private Integer currPage = 1; 
	private Integer amount = 10;

	private Integer PagesPerPage = 10;
} // end class
