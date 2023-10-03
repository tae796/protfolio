package pokas.web.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pokas.web.service.PromotionService;


@Controller
@RequestMapping("/Compare")
public class CompareController {

	@Autowired
	private HttpSession session;

	@Autowired
	private PromotionService jservice;



	//�옣湲곕젋�듃��?
	@RequestMapping("/About_long")
	public String About_long() {

		return "/Compare/About_long";
	}
	
	//�삤�넗由ъ뒪��?
	@RequestMapping("/About_auto")
	public String About_term() {

		return "/Compare/About_auto";
	}
	
	@RequestMapping("/Comparea")
	public String Compare() {

		return "/Compare/Comparea";
	}
	
	//吏꾪뻾�젅李�
	@RequestMapping("/Step")
	public String Step() {

		return "/Compare/Step";
	}


}
