package com.kh.portfolio.member.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.portfolio.member.svc.MemberSVC;
import com.kh.portfolio.member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger 
		= LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberSVC memberSVC;
	
	//회원가입 화면
	@GetMapping("/joinForm")
	public String joinForm() {
		
		return "/member/joinForm";
	}
	
	//회원가입처리
	@PostMapping("/join")
	public String join(MemberVO memberVO, Model model) {
		logger.info("MemberController.join(MemberVO memberVO)호출됨!");
		logger.info(memberVO.toString());
		
		int result = memberSVC.joinMember(memberVO);
		if(result == 1) {
			return "/member/loginForm";			
		}else {
			model.addAttribute("errmsg", "error");
			return "/member/joinForm";
		}
	}
	
	//내정보
	@GetMapping("/myPage")
	public String mypage() {
		
		return "/member/myPage";
	}
	
	//회원정보수정 화면
	@GetMapping("/modifyForm")
	public String modifyForm() {

		return "/member/modifyForm";
	}
	
	//회원정보 수정 처리
	@PostMapping("/modify")
	public String modify(MemberVO memberVO, Model model,HttpSession session) {
		
		int result = memberSVC.modifyMember(memberVO);
		
		//회원수정실패
		if(result !=1 ) {
			model.addAttribute("svr_msg","비밀번호가 일치하지 않습니다.");
			return "/member/modifyForm";
		}
		//세션에 id정보를 가져온다.
		String id = ((MemberVO)session.getAttribute("member")).getId();
		//수정된 회원 정보를 다시 읽어온다.
		session.setAttribute("member",memberSVC.listOneMember(id));
		return "redirect:/member/modifyForm";
		
	}
}









