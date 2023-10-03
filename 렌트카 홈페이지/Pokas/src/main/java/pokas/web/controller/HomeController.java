package pokas.web.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pokas.web.service.PromotionService;
import pokas.web.service.ReviewService;
//import pokas.web.service.RequestService;
import pokas.web.service.HotdealService;
import pokas.web.dto.*;



@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private HttpSession session;

	@Autowired
	private PromotionService p_service;
	@Autowired
	private ReviewService r_service;
	@Autowired
	private HotdealService h_service;
	//@Autowired
	//private RequestService rq_service;
	
	



	//占쎈뮞筌띾뜆�뵬 占쎈꺖揶쏉옙
	@RequestMapping("/")
	public String Index(Model model) throws Exception {

		List<PromotionDTO> p_list = p_service.prom_all(1);			
		List<HotdealDTO> h_list = h_service.hot_all(1);
		List<ReviewDTO> car_list = r_service.car_select(1);
		List<ReviewDTO> contrast_list = r_service.contrast_select(1);
		//List<RequestDTO> rq_list = rq_service.req_all();
		

		
		
		model.addAttribute("p_list", p_list);
		model.addAttribute("h_list", h_list);
		model.addAttribute("car_list", car_list);
		model.addAttribute("contrast_list", contrast_list);
		//model.addAttribute("rq_list", rq_list);
		

		return "/Index";
	}
	
	@RequestMapping("/Sms")
	public String Sms(Model model,String strDest, String strData, String strCallBack) throws Exception {
		
		model.addAttribute("strDest", strDest);
		model.addAttribute("strData", strData);
		model.addAttribute("strCallBack", strCallBack);
		
		
		return "/Sms";
	}


}
