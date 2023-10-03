package pokas.web.controller;


import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pokas.web.service.PromotionService;
import pokas.web.service.*;
import pokas.web.dto.*;


@Controller
@RequestMapping("/Company")
public class CompanyController {

	@Autowired
	private HttpSession session;

	@Autowired
	private PromotionService jservice;
	
	@Autowired
	private PartnershipService pservice;
	
	@Autowired
	private FaqService fservice;

	//�뒪留덉씪 �냼媛�
	@RequestMapping("/About")
	public String About() {

		return "/Company/About";
	}
	
	//�옄二쇰Щ�뒗 吏덈Ц
	@RequestMapping("/Question")
	public String Question(Model model) throws Exception {
		
		List<FaqDTO> view = fservice.faq_select_all();
		
		model.addAttribute("view",view);
		return "/Company/Question";
	}
	
	//梨꾩슜�븞�궡
	@RequestMapping("/Recruit")
	public String Recruit() {

		return "/Company/Recruit";
	}
	
	//�젣�쑕臾몄쓽
	@RequestMapping("/Partnership")
	public String Partnership() {

		return "/Company/Partnership";
	}
	
	@RequestMapping("/PartnershipProc")
	public String Insert(PartnershipDTO rq_dto,HttpServletResponse res) throws Exception {

		pservice.pts_insert(rq_dto);
		
		return "redirect:/"; 
	}
	
	//李얠븘�삤�떆�뒗 湲�
	@RequestMapping("/Map")
	public String Map() {

		return "/Company/Map";
	}


}
