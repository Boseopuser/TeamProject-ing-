package org.zerock.myapp.domain;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class UsersDTO {
	private Integer userno;
	private String ID;
	private String nickName;
	private String name;
	private String password;
	private String gender;
	private String EMail;
	private String phoneNumber;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate birthDate;
	private String MBTI;
	private String likeArea;

}
