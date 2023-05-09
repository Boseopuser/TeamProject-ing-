package org.zerock.myapp.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.myapp.domain.UsersDTO;
import org.zerock.myapp.domain.UsersVO;
import org.zerock.myapp.exception.ControllerException;
import org.zerock.myapp.service.UsersService;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

//@RequestMapping("/users")
@Controller
public class UsersController {
   
	@Setter (onMethod_=@Autowired)
	private UsersService service;
	
	
	// 1. 회원 목록 조회
	@GetMapping("/list")//리턴타입이 보이드이므로 리퀘스트 맵핑이 uri
	void list(Model model) throws ControllerException {
		log.trace("list({}) ㄲㄲ",model);
		// model 상자 안에 담기만 하면 된다
		// 비즈니스 수행결과인 list 를 model 상자에 담자
		try {
			
			List<UsersVO> list;
			list = this.service.getList();
			
			// 리퀘스트 스콥에다가 공유속성을 생성
			model.addAttribute("__LIST__",list);
		} catch (Exception e) {
			throw new ControllerException(e);
		}

	} // list : 전체회원조회가 있어야 돼나??
	
	// 2. 회원가입						필수 파라미터 등록!!
	@PostMapping(path="/register"
//				,params= {"ID","nickName","name",
//						"password", "gender", "EMail",
//						"phoneNumber", "birthDate","MBTI","likeArea"}
			)	//rttrs 1회성 전달 메소드  
	String register(UsersDTO dto,RedirectAttributes rttrs ) throws ControllerException  {
		log.trace("register( {}, {} ) ㄲㄲ",dto,rttrs);
		try {
			Objects.requireNonNull(dto);		// dto가 제대로 수집되어 널이 아니라면
			if (this.service.register(dto)) {	// if Success
				rttrs.addAttribute("result", "true");
				rttrs.addAttribute("userno",dto.getUserno());
			}
			return "redirect:/register";
		} catch(Exception e) {
			throw new ControllerException(e);
		}
	
	} // 회원가입창으로 이동
	
	@GetMapping("/register" )
	void register() {
		log.trace("join() invoked.");
		
	}
	
	
	// 3. 특정 회원 조회
	@GetMapping(path={"/get","/modify"}, params = "userno")
//	String get(@RequestParam("bno") Integer bno ,Model model) 
//			throws ControllerException {
	void get(@RequestParam("userno") Integer userno ,Model model) 
				throws ControllerException {
		
		log.trace("get() 인보크");
		
		try {
			UsersVO vo = this.service.get(userno);
			model.addAttribute("__BOARD__",vo);
			
//			return "뷰이름";
		} catch(Exception e) {
			throw new ControllerException(e);
			
		}
		
	} // 특정 회원의 모든 게시물 조회
	
	
	@PostMapping(path="/modify")
	String modify(UsersDTO dto,RedirectAttributes rttrs) 
			throws ControllerException {
		log.trace("modify({}) invoked.",dto);
		
		try {
			Objects.requireNonNull(dto);
			
			if( this.service.modify(dto) ) {
				rttrs.addAttribute("result","true");
				rttrs.addAttribute("userno",dto.getUserno());
			}
			
			return "redirect:/mypage";
		} catch (Exception e) {
			throw new ControllerException(e);
		}
	} // 회원정보수정?

	
	
	
//	@PostMapping(path="/remove")
//	String remove (Integer bno , RedirectAttributes rttrs) 
//			throws ControllerException {
//		log.trace("remove({}) invoked.",bno);
//		
//		try {
//			
//			if( this.service.remove(bno) ) {
//				rttrs.addAttribute("result","true");
//				rttrs.addAttribute("bno",bno);
//			}
//			
//			return "redirect:/board/list";
//		} catch (Exception e) {
//			throw new ControllerException(e);
//		}
//		
//		
//		
//	} // 탈퇴창
	
	
	
   
   
} // end class