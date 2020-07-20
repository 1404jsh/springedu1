package com.kh.portfolio.test;

import java.sql.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/join")
public class joinController {

	private static Logger logger = LoggerFactory.getLogger(joinController.class);

	// 회원가입화면
	@GetMapping("/joinForm")
	public String joinForm() {
		logger.info("String joinForm() 호출됨!");
		return "joinForm";
	}

	// 회원가입처리
@GetMapping("")
	public String join(
			@RequestParam String id, String pw, String name, String gender, Date birth, String region, String hobby,
			Model model) {
		logger.info("String join() 호출됨!" + id + pw + name + gender + birth + region + hobby);
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("name", name);
		model.addAttribute("gender", gender);
		model.addAttribute("birth", birth);
		model.addAttribute("region", region);
		model.addAttribute("hobby", hobby);
		return "joinResult";
	}
}
