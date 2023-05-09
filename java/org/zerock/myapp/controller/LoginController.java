package org.zerock.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.myapp.domain.UsersDTO;
import org.zerock.myapp.service.LoginService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequiredArgsConstructor
public class LoginController {
	
	private final LoginService service;
	
	@GetMapping("/login")
	public String login() {
		return "loginpage"; // 로그인 폼 페이지로 이동
	} // login
	
	@PostMapping("/login")
	public String login(@RequestParam("ID") String id,
						@RequestParam("password") String password,
						HttpServletRequest request,
						Model model) {
		log.trace("login({},{}) invoked.", id, password);
		
		UsersDTO dto = new UsersDTO();
		dto.setID(id);
		dto.setPassword(password);
		
		UsersDTO login = service.login(dto); // 로그인 서비스 실행
		
		if(login == null) {
			model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		return "loginpage"; // 로그인 실패시 로그인 폼 페이지로 이동
		} // if
		
		// 로그인 성공시, 세션에 로그인 정보를 저장
		HttpSession session = request.getSession();
		session.setAttribute("login", login);
		
		return "mainpage"; // 메인 페이지로 이동
	} // login
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		log.info("logout()...");
		
		// 세션에서 로그인 정보를 삭제
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "mainpage"; // 메인 페이지로 이동
	} // logout
	
	
	
} // end class
