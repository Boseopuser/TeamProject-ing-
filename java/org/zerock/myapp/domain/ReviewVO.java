package org.zerock.myapp.domain;

import java.util.Date;

import lombok.Value;


@Value
public class ReviewVO {
	private Integer postno;
	private String nickname;
	private String title;
	private String content;
	private Integer views;
	private Integer likes;
	private Date regidate;
	private Date modifydate;

	public ReviewDTO toDTO() {

	ReviewDTO dto = new ReviewDTO();
	dto.setPostno(postno);
	dto.setNickname(nickname);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setViews(views);
	dto.setLikes(likes);
	dto.setRegidate(regidate);
	dto.setModifydate(modifydate);


	return dto;
	}
}
