package pokas.web.controller;


import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pokas.web.service.RequestService;
import pokas.web.dto.RequestDTO;
import pokas.web.service.AdminService;
import pokas.web.dto.AdminDTO;
import pokas.web.filter.xssfilter;



@Controller
@RequestMapping("/Request")
public class RequestController {

	@Autowired
	private HttpSession session;

	@Autowired
	private RequestService rq_service;
	
	@Autowired
	private AdminService ad_service;


	
	
	
	@RequestMapping("/Ask")
	public String Ask() {

		return "/Request/Ask";
	}
	
	@RequestMapping("/InsertProc")
	public String Insert(RequestDTO rq_dto,HttpServletResponse res) throws Exception {

		
		rq_service.req_insert(rq_dto);
		
		return "redirect:/Request/Askdone"; 
	}
	
	@RequestMapping("/DeleteProc")
	public String Delete(int id,HttpServletResponse res) throws Exception {

		rq_service.req_delete(id);
		
		return "redirect:/2848/List?key=edlclsjxm"; 
	}
	
	@RequestMapping("/Askdone")
	public String Askdone() {

		return "/Request/Askdone";
	}
	@RequestMapping("/List_update")
	public String List_update(int id, Model model) throws Exception {

		
		List<AdminDTO> admin = ad_service.get_admin_list();
		RequestDTO view = rq_service.req_one(id);		
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		session.setAttribute("view", view);
		model.addAttribute("admin",admin);
		return "/Request/List_update";
	}
	
	@RequestMapping("/List_write")
	public String List_write(Model model) throws Exception {
		List<AdminDTO> admin = ad_service.get_admin_list();
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		
		model.addAttribute("admin",admin);
		return "/Request/List_write";
	}
	
	
	
	//燁삳똻萸낉옙�궎占쎈꽊 占쎄맒占쎈뼖
	@RequestMapping("/Kakao")
	public String Kakao() {

		return "/Request/Kakao";
	}
	
}
