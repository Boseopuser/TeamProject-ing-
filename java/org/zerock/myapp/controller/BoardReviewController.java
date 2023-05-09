package org.zerock.myapp.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.myapp.domain.Criteria;
import org.zerock.myapp.domain.PageDTO;
import org.zerock.myapp.domain.ReviewDTO;
import org.zerock.myapp.domain.ReviewVO;
import org.zerock.myapp.exception.ControllerException;
import org.zerock.myapp.service.BoardReviewService;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@RequestMapping("/board")
@Controller
public class BoardReviewController {

	@Setter(onMethod_ = @Autowired)
	private BoardReviewService service;

	// 1. 게시판 목록 조회
	@GetMapping("/list")
	void list(Criteria cri, Model model) throws ControllerException {
		log.trace("list({},{}) invoked.", cri, model);

		try {
			List<ReviewVO> list = this.service.getList(cri);
			model.addAttribute("__List__", list);

			PageDTO pageDTO = new PageDTO(cri, this.service.getTotal());
			model.addAttribute("pageMaker", pageDTO);
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
	} // list

	// 2. 게시물 등록
	@PostMapping(path = "/register", params = { "nickname","title","content" })
	String register(ReviewDTO dto, RedirectAttributes rttrs) throws ControllerException {
		log.trace("register({}, {}) invoked.", dto, rttrs);

		try {
			Objects.requireNonNull(dto);

			if (this.service.register(dto)) {
				rttrs.addAttribute("result", "true");
				rttrs.addAttribute("postno", dto.getPostno());
			} // if

			return "redirect:/board/list";
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
	} // register

	@GetMapping("/register")
	void register() {
		log.trace("register() invoked");

	} // register

	// 게시물 조회
	@GetMapping(path = { "/get", "/modify" }, params = "postno")
	void get(@RequestParam("postno") Integer postno, Model model) throws ControllerException {
		log.trace("get({},{}) invoked.", postno, model);

		try {
			ReviewVO vo = this.service.get(postno);

			model.addAttribute("__List__", vo);
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
	} // Get



	// 게시물 업데이트(갱신)
	@PostMapping("/modify")
	String modify(ReviewDTO dto, Integer currPage, RedirectAttributes rttrs)
	throws ControllerException {
		log.trace("modify({}) invoked.", dto);

	try {
		Objects.requireNonNull(dto);

		if(this.service.modify(dto)) {
			rttrs.addAttribute("currPage", currPage);
			rttrs.addAttribute("result", "true");
			rttrs.addAttribute("postno", dto.getPostno());
		} // if

		return "redirect:/board/list";
		} catch(Exception e) {
			throw new ControllerException(e);
		} // try-catch
	} // modify


	// 게시물 삭제 
	@PostMapping("/remove")
	String remove(Integer currPage, Integer postno, RedirectAttributes rttrs)
	throws ControllerException {
		log.trace("remove({}, {}) invoked.", currPage, postno);

		try {
			rttrs.addAttribute("currPage", currPage);

			if(this.service.remove(postno)) {

				rttrs.addAttribute("result","true");
				rttrs.addAttribute("postno", postno);
			} // if

			return "redirect:/board/list";
		} catch(Exception e) {
			throw new ControllerException(e);
		} // try-catch
	} // remove
}// end class 
