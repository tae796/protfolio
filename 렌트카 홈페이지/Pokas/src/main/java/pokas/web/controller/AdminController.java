package pokas.web.controller;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import pokas.web.service.PromotionService;
import pokas.web.service.ReviewService;
import pokas.web.service.RequestService;
import pokas.web.service.HotdealService;
import pokas.web.dto.*;
import pokas.web.service.*;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("2848")
public class AdminController {

	@Autowired
	private HttpSession session;


	@Autowired
	private RequestService rq_service;
	@Autowired
	private AdminService a_service;
	@Autowired
	private ReviewService r_service;
	@Autowired
	private HotdealService h_service;
	@Autowired
	private PromotionService p_service;
	@Autowired
	private CarService c_service;
	@Autowired
	private FaqService f_service;
	
	
	
	@RequestMapping("/login")
	public String login(Model model) throws Exception {
		
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);
		
		if(session.getAttribute("myinfo") ==null) {
			return "/2848/login";	
		}
		else {
			return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
		}
		
	}
	
	@RequestMapping("/Admin_join")
	public String Admin_join(Model model) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);
		return "/2848/Admin_join";
	}
	
	
	
	@RequestMapping("/Admin_writeproc")
	public String Admin_writeproc(AdminDTO c_dto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {


		
		
		if(files[0].getSize() !=0) {
			
			String realPath = "../../resources/img/";
			
			
			System.out.println(realPath);
			File tempFilepath = new File(realPath);
			
			if(!tempFilepath.exists()) {
				tempFilepath.mkdir();
			}
			
				
				UUID uuid = UUID.randomUUID();
		
				String oriname = files[0].getOriginalFilename();

				String extension = FilenameUtils.getExtension(files[0].getOriginalFilename());
				String sysname = uuid.toString()+"."+extension;
		
					files[0].transferTo(new File(realPath+"/"+sysname));
					c_dto.setimage(sysname);

		} 
		
		a_service.admin_insert(c_dto);
		

		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	
	
	@RequestMapping("/loginproc")
	public String loginproc(Model model, AdminDTO adto) throws Exception {

		AdminDTO admin = a_service.admin_login(adto);
		
		
		
		if(admin ==null) {
			return "redirect:/";
		}
		else {
			session.setAttribute("myinfo", admin);
			return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
		
		}
	}

	@RequestMapping("/Admin_list")
	public String Admin_list(Model model) throws Exception {

		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		List<AdminDTO> rq_list = a_service.get_admin_list();
		
		model.addAttribute("rq_list", rq_list);
		model.addAttribute("mdto",mdto);

		return "/2848/Admin_list";
	}
	
	
	
	@RequestMapping("/Admin_updateproc")
	public String Admin_updateproc(AdminDTO adto) throws Exception {

		a_service.admin_update(adto);

		return "redirect:/2848/Admin_list?key=edlclsjxm";
	}
	
	@RequestMapping("/Admin_deleteproc")
	public String Admin_deleteproc(int id) throws Exception {

		a_service.admin_delete(id);

		return "/2848/Admin_list";
	}
	
	
	
	@RequestMapping("/List")
	public String Admin(Model model, String type,String value,String time,String start,String end,String list,String status) throws Exception {

		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		String master = "master";
		String supervisor = "supervisor";
		String manager = "manager";
		String member = "member";	

		 

		if(mdto.getgrade().equals(master)) {
			int all = rq_service.req_all_count();
			int today = rq_service.req_today_count(); 
			int yesterday = rq_service.req_yesterday_count();
			int month = rq_service.req_month_count();
			if(type.equals("name")) {
				List<RequestDTO> rq_list =  rq_service.req_search_name(value);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
				
			}
			else if(type.equals("brand")) {
				List<RequestDTO> rq_list =  rq_service.req_search_brand(value);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else if(type.equals("region")) {
				List<RequestDTO> rq_list = rq_service.req_search_region(value);	
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else if(type.equals("phone")) {
				List<RequestDTO> rq_list = rq_service.req_search_phone(value);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else {
				if(time.equals("today")) {
					List<RequestDTO> rq_list = rq_service.req_today();

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else if (time.equals("yesterday")) {
					List<RequestDTO> rq_list = rq_service.req_yesterday();

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else if (time.equals("month")) {
					List<RequestDTO> rq_list = rq_service.req_month();

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else {
					if(start.isEmpty()) {
						List<RequestDTO> rq_list ;
						if(list.isEmpty() && status.isEmpty()) {
							 rq_list = rq_service.req_all();	
						}
						else if (list.isEmpty() && !status.isEmpty()) {
							 rq_list = rq_service.req_all_status_filter(status);	
						}
						else if (!list.isEmpty() && status.isEmpty()) {
							 rq_list = rq_service.req_all_member_filter(list);	
						}
						else {
							 rq_list = rq_service.req_all_member_filter(list);	
						}
						List<AdminDTO> admin = a_service.get_admin_list();

						model.addAttribute("admin", admin);
						model.addAttribute("rq_list", rq_list);
						model.addAttribute("mdto",mdto);
						model.addAttribute("today",today);
						model.addAttribute("yesterday",yesterday);
						model.addAttribute("month",month);
						model.addAttribute("all",all);
				
					}
					else {
						List<RequestDTO> rq_list = rq_service.req_search_date(start,end);

						model.addAttribute("rq_list", rq_list);
						model.addAttribute("mdto",mdto);
						model.addAttribute("today",100);
						model.addAttribute("yesterday",yesterday);
						model.addAttribute("month",month);
						model.addAttribute("all",all);
					}
					
				}
		
			}
			
		}
		else if(mdto.getgrade().equals(supervisor)){
			int all = rq_service.req_all_count_center(mdto.getcenter());
			int today = rq_service.req_today_count_center(mdto.getcenter());
			int yesterday = rq_service.req_yesterday_count_center(mdto.getcenter());
			int month = rq_service.req_month_count_center(mdto.getcenter());
			RequestDTO tmp = new RequestDTO();
			tmp.setname(value);
			tmp.setcenter(mdto.getcenter());
			if(type.equals("name")) {
				List<RequestDTO> rq_list =  rq_service.req_search_name_center(tmp);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
				
			}
			else if(type.equals("brand")) {
				List<RequestDTO> rq_list =  rq_service.req_search_brand_center(tmp);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else if(type.equals("region")) {
				List<RequestDTO> rq_list = rq_service.req_search_region_center(tmp);	
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else if(type.equals("phone")) {
				List<RequestDTO> rq_list = rq_service.req_search_phone_center(tmp);
				model.addAttribute("rq_list", rq_list);
				model.addAttribute("mdto",mdto);
				model.addAttribute("today",today);
				model.addAttribute("yesterday",yesterday);
				model.addAttribute("month",month);
				model.addAttribute("all",all);
			}
			else {
				if(time.equals("today")) {
					List<RequestDTO> rq_list = rq_service.req_today_center(mdto.getcenter());

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else if (time.equals("yesterday")) {
					List<RequestDTO> rq_list = rq_service.req_yesterday_center(mdto.getcenter());

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else if (time.equals("month")) {
					List<RequestDTO> rq_list = rq_service.req_month_center(mdto.getcenter());

					model.addAttribute("rq_list", rq_list);
					model.addAttribute("mdto",mdto);
					model.addAttribute("today",today);
					model.addAttribute("yesterday",yesterday);
					model.addAttribute("month",month);
					model.addAttribute("all",all);
				}
				else {
					if(start.isEmpty()) {
						List<RequestDTO> rq_list = rq_service.req_all_center(mdto.getcenter());

						model.addAttribute("rq_list", rq_list);
						model.addAttribute("mdto",mdto);
						model.addAttribute("today",today);
						model.addAttribute("yesterday",yesterday);
						model.addAttribute("month",month);
						model.addAttribute("all",all);
					}
					else {
						List<RequestDTO> rq_list = rq_service.req_search_date_center(start,end,mdto.getcenter());

						model.addAttribute("rq_list", rq_list);
						model.addAttribute("mdto",mdto);
						model.addAttribute("today",today);
						model.addAttribute("yesterday",yesterday);
						model.addAttribute("month",month);
						model.addAttribute("all",all);
						
					}
					
				}
		
			}

		} 
			  else if(mdto.getgrade().equals(manager)){
			  
			  int all = rq_service.req_all_count_team(mdto.getcenter(),mdto.getteam());
			  int today = rq_service.req_today_count_team(mdto.getcenter(),mdto.getteam());
			  int yesterday = rq_service.req_yesterday_count_team(mdto.getcenter(),mdto.getteam()); 
			  int month = rq_service.req_month_count_team(mdto.getcenter(),mdto.getteam());
			  RequestDTO tmp = new RequestDTO(); tmp.setname(value);
			  tmp.setcenter(mdto.getcenter()); tmp.setteam(mdto.getteam());
			  
			  if(type.equals("name")) { 
				  List<RequestDTO> rq_list = rq_service.req_search_name_team(tmp); 
				  model.addAttribute("rq_list", rq_list);
				  model.addAttribute("mdto",mdto); model.addAttribute("today",today);
				  model.addAttribute("yesterday",yesterday); model.addAttribute("month",month);
				  model.addAttribute("all",all);
			  
			  } 
			  else if(type.equals("brand")) { 
				  List<RequestDTO> rq_list = rq_service.req_search_brand_team(tmp); model.addAttribute("rq_list",rq_list); 
				  model.addAttribute("mdto",mdto); model.addAttribute("today",today);
				  model.addAttribute("yesterday",yesterday);
				  model.addAttribute("month",month);
				  model.addAttribute("all",all); 
				  } 
			  else if(type.equals("region")) {
				  List<RequestDTO> rq_list = rq_service.req_search_region_team(tmp);
				  model.addAttribute("rq_list", rq_list); 
				  model.addAttribute("mdto",mdto);
				  model.addAttribute("today",today); 
				  model.addAttribute("yesterday",yesterday);
				  model.addAttribute("month",month); 
				  model.addAttribute("all",all); 
				  } else if(type.equals("phone")) { 
					  List<RequestDTO> rq_list = rq_service.req_search_phone_team(tmp); 
					  model.addAttribute("rq_list",rq_list); 
					  model.addAttribute("mdto",mdto); 
					  model.addAttribute("today",today);
					  model.addAttribute("yesterday",yesterday); 
					  model.addAttribute("month",month);
					  model.addAttribute("all",all); 
					  } 
				  else 
				  { 
					  if(time.equals("today")) {
						  List<RequestDTO> rq_list = rq_service.req_today_team(mdto.getcenter(),mdto.getteam());
			  
						  model.addAttribute("rq_list", rq_list); 
						  model.addAttribute("mdto",mdto);
						  model.addAttribute("today",today);
						  model.addAttribute("yesterday",yesterday);
						  model.addAttribute("month",month);
						  model.addAttribute("all",all); } 
					  else if(time.equals("yesterday")) { 
						  List<RequestDTO> rq_list =
								  rq_service.req_yesterday_team(mdto.getcenter(),mdto.getteam());
			  
						  model.addAttribute("rq_list", rq_list);
						  model.addAttribute("mdto",mdto);
						  model.addAttribute("today",today); 
						  model.addAttribute("yesterday",yesterday);
						  model.addAttribute("month",month);
						  model.addAttribute("all",all); 
						  } 
					  else if(time.equals("month")) {
						  List<RequestDTO> rq_list = rq_service.req_month_team(mdto.getcenter(),mdto.getteam());
			  
						  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
						  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
						  model.addAttribute("month",month); model.addAttribute("all",all); 
						  }
					  else {
						  if(start.isEmpty()) { 
							  List<RequestDTO> rq_list = rq_service.req_all_team(mdto.getcenter(),mdto.getteam());
			  
							  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
							  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
							  model.addAttribute("month",month); model.addAttribute("all",all); 
							  } 
						  else {
							  List<RequestDTO> rq_list = rq_service.req_search_date_team(start,end,mdto.getcenter(),mdto.getteam());
			  
							  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
							  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
							  model.addAttribute("month",month); model.addAttribute("all",all);
			  
			  }
			  
			  }
			  
			  }
			  
			  }
		
			  else {
				  

				  int all = rq_service.req_all_count_name(mdto.getname());
				  int today = rq_service.req_today_count_name(mdto.getname());
				  int yesterday = rq_service.req_yesterday_count_name(mdto.getname()); 
				  int month = rq_service.req_month_count_name(mdto.getname());
				  RequestDTO tmp = new RequestDTO(); 
				  tmp.setname(value);
				  tmp.setcenter(mdto.getcenter()); 
				  tmp.setteam(mdto.getteam());
				  tmp.setname(mdto.getname());
				  
				  
				  if(type.equals("name")) { 
					  List<RequestDTO> rq_list = rq_service.req_search_name_name(tmp); 
					  model.addAttribute("rq_list", rq_list);
					  model.addAttribute("mdto",mdto); model.addAttribute("today",today);
					  model.addAttribute("yesterday",yesterday); model.addAttribute("month",month);
					  model.addAttribute("all",all);
				  
				  } 
				  else if(type.equals("brand")) { 
					  List<RequestDTO> rq_list = rq_service.req_search_brand_name(tmp); model.addAttribute("rq_list",rq_list); 
					  model.addAttribute("mdto",mdto); model.addAttribute("today",today);
					  model.addAttribute("yesterday",yesterday);
					  model.addAttribute("month",month);
					  model.addAttribute("all",all); 
					  } 
				  else if(type.equals("region")) {
					  List<RequestDTO> rq_list = rq_service.req_search_region_name(tmp);
					  model.addAttribute("rq_list", rq_list); 
					  model.addAttribute("mdto",mdto);
					  model.addAttribute("today",today); 
					  model.addAttribute("yesterday",yesterday);
					  model.addAttribute("month",month); 
					  model.addAttribute("all",all); 
					  } else if(type.equals("phone")) { 
						  List<RequestDTO> rq_list = rq_service.req_search_phone_name(tmp); 
						  model.addAttribute("rq_list",rq_list); 
						  model.addAttribute("mdto",mdto); 
						  model.addAttribute("today",today);
						  model.addAttribute("yesterday",yesterday); 
						  model.addAttribute("month",month);
						  model.addAttribute("all",all); 
						  } 
					  else 
					  { 
						  if(time.equals("today")) {
							  List<RequestDTO> rq_list = rq_service.req_today_name(mdto.getname());
				  
							  model.addAttribute("rq_list", rq_list); 
							  model.addAttribute("mdto",mdto);
							  model.addAttribute("today",today);
							  model.addAttribute("yesterday",yesterday);
							  model.addAttribute("month",month);
							  model.addAttribute("all",all); } 
						  else if(time.equals("yesterday")) { 
							  List<RequestDTO> rq_list = rq_service.req_yesterday_name(mdto.getname());
				  
							  model.addAttribute("rq_list", rq_list);
							  model.addAttribute("mdto",mdto);
							  model.addAttribute("today",today); 
							  model.addAttribute("yesterday",yesterday);
							  model.addAttribute("month",month);
							  model.addAttribute("all",all); 
							  } 
						  else if(time.equals("month")) {
							  List<RequestDTO> rq_list = rq_service.req_month_name(mdto.getname());
				  
							  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
							  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
							  model.addAttribute("month",month); model.addAttribute("all",all); 
							  }
						  else {
							  if(start.isEmpty()) { 
								  List<RequestDTO> rq_list = rq_service.req_all_name(mdto.getname());
				  
								  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
								  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
								  model.addAttribute("month",month); model.addAttribute("all",all); 
								  } 
							  else {
								  List<RequestDTO> rq_list = rq_service.req_search_date_name(start,end,mdto.getname());
				  
								  model.addAttribute("rq_list", rq_list); model.addAttribute("mdto",mdto);
								  model.addAttribute("today",today); model.addAttribute("yesterday",yesterday);
								  model.addAttribute("month",month); model.addAttribute("all",all);
				  
				  }
				  
				  }
				  
				  }
				  
				  
			  }
			 
		
		

		return "/2848/List";
	}
	
	
	@RequestMapping("/updateProc")
	public String updateProc(int id, String status, String detail,String member) throws Exception {
		
		RequestDTO rqdto = new RequestDTO();
		
		rqdto.setid(id);
		rqdto.setdetail(detail);
		rqdto.setstatus(status);
		rqdto.setmember(member);
		
		rq_service.req_update(rqdto);
		
		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	
	@RequestMapping("/searchproc")
	public String searchproc(String type) throws Exception {
		
		RequestDTO rqdto = new RequestDTO();
		
		if(type.equals("name")) {
			List<RequestDTO> rq_list =  rq_service.req_search_name(type);
		}
		else if(type.equals("brand")) {
			List<RequestDTO> rq_list =  rq_service.req_search_brand(type);
		}
		else if(type.equals("region")) {
			List<RequestDTO> rq_list = rq_service.req_search_region(type);	
		}
		else if(type.equals("phone")) {
			List<RequestDTO> rq_list = rq_service.req_search_phone(type);
		}

		
		return "/2848/List?key=edlclsjxm";
	}
	
	
	@RequestMapping("/deleteProc")
	public String deleteProc(int id) throws Exception {
		
		rq_service.req_delete(id);
		
	
		
		return "/2848/List?key=edlclsjxm";
	}


	@RequestMapping("/Content_write")
	public String Content_write(Model model) throws Exception {
		
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);
		
		return "/2848/Content_write";
	}

	
	
	
	@RequestMapping("/Content_list")
	public String Content_list(Model model) throws Exception {
		List<ReviewDTO> r_list1 = r_service.car_select(1);
		List<ReviewDTO> r_list2 = r_service.contrast_select(1);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);
		
		model.addAttribute("r_list1", r_list1);
		model.addAttribute("r_list2", r_list2);
		
		
		
		return "/2848/Content_list";
	}
	
	@RequestMapping("/Promotion_list")
	public String Promotion_list(Model model) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		
		List<PromotionDTO> p_list = p_service.prom_all1();
		
		model.addAttribute("p_list", p_list);
		model.addAttribute("mdto",mdto);
		
		
		return "/2848/Promotion_list";
	}
	
	@RequestMapping("/Hotdeal_list")
	public String Hotdeal_list(Model model) throws Exception {
		List<HotdealDTO> h_list = h_service.hot_all1();
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		
		model.addAttribute("h_list", h_list);
		model.addAttribute("mdto",mdto);
		
		
		return "/2848/Hotdeal_list";
	}
	
	@RequestMapping("/Faq_list")
	public String Faq_list(Model model) throws Exception {
		List<FaqDTO> f_list = f_service.faq_select_all();
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		
		model.addAttribute("f_list", f_list);
		model.addAttribute("mdto",mdto);
		
		
		return "/2848/Faq_list";
	}
	
	@RequestMapping("/Faq_write")
	public String Faq_write(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);	
			 	
		return "/2848/Faq_write";
		
		
	}
	
	@RequestMapping("/Faq_update")
	public String Faq_update(int id, Model model) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		
		
		
		FaqDTO view = f_service.faq_select_one(id);
		
		model.addAttribute("mdto",mdto);
		session.setAttribute("view", view);
		return "/2848/Faq_update";
	}
	
	
	@RequestMapping("/Faq_insertproc")
	public String Faq_insertproc(FaqDTO adto) throws Exception {

		f_service.faq_insert(adto);

		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	
	
	@RequestMapping("/Faq_updateproc")
	public String Faq_updateproc(FaqDTO adto) throws Exception {

		f_service.faq_update(adto);

		return "redirect:/Company/Question#target";
	}
	
	@RequestMapping("/Faq_deleteProc")
	public String Faq_deleteProc(int id) throws Exception {
		
		f_service.faq_delete(id);
		
	
		
		return "/2848/Faq_list?key=edlclsjxm";
	}
	
	
	@RequestMapping("/Promotion_deleteProc")
	public String Promotion_deleteProc(int id) throws Exception {

		p_service.prom_delete(id);
		
	
		
		return "/2848/Promotion_list?key=edlclsjxm";
	}
	
	@RequestMapping("/Hotdeal_deleteProc")
	public String Hotdeal_deleteProc(int id) throws Exception {
		
		h_service.hot_delete(id);
		
	
		
		return "/2848/Hotdeal_list?key=edlclsjxm";
	}
	
	@RequestMapping("/logout")
	public String logout() throws Exception {
		session.invalidate();
		
		return "/2848/login";
	}
	
	
	@RequestMapping("/Admin_update")
	public String Admin_update(Model model, int id) throws Exception {
		
		
		AdminDTO view = a_service.get_one(id);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);	
		model.addAttribute("view",view);

		return "/2848/Admin_update";
	}
	
	


}
