package org.zerock.myapp.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	private Integer postno;
	private String nickname;
	private String title;
	private String content;
	private Integer views;
	private Integer likes;
	private Date regidate;
	private Date modifydate;
}
