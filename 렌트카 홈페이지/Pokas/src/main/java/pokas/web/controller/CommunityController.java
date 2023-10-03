package pokas.web.controller;


import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import pokas.web.dto.AdminDTO;
import pokas.web.dto.CarDTO;
import pokas.web.dto.ReviewDTO;
import pokas.web.dto.SmarteditorDTO;
import pokas.web.service.ReviewService;



@Controller
@RequestMapping("/Community")
public class CommunityController {

	@Autowired
	private HttpSession session;

	@Autowired
	private ReviewService r_service;
	
	
	//怨꾩빟�꽌 �옉�꽦�썑湲�
	@RequestMapping("/Review")
	public String Review(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		List<ReviewDTO> list = r_service.contrast_select(cpage);
		String navi = r_service.getPageNavi1(cpage);
		  
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		model.addAttribute("cpage", cpage);
		model.addAttribute("mdto",mdto);

		return "/Community/Review";
	}
	
	//李⑤웾 異쒓퀬 �썑湲�
	@RequestMapping("/Review_car")
	public String Review_car(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		List<ReviewDTO> list = r_service.car_select(cpage);
		String navi = r_service.getPageNavi2(cpage);
			  
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		model.addAttribute("cpage", cpage);
		model.addAttribute("mdto",mdto);

		return "/Community/Review_car";
		}
		
	//�옣湲곕젋�듃 & 由ъ뒪 �젙蹂� �썑湲�
	@RequestMapping("/Info")
	public String Review_info(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		List<ReviewDTO> list = r_service.info_select(cpage);
		String navi = r_service.getPageNavi3(cpage);
				  
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		model.addAttribute("cpage", cpage);
		model.addAttribute("mdto",mdto);

		return "/Community/Info";
		}	
	
	

	@RequestMapping("/Review_view")
	public String view(int r_no, Model model) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		
		ReviewDTO view = r_service.select_one(r_no);
		
		//view.settext(view.gettext().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
		
		List<ReviewDTO> list = r_service.contrast_select(1);
		session.setAttribute("view", view);
		model.addAttribute("list",list);
		model.addAttribute("mdto",mdto);
		return "/Community/Review_view";
	}
	

	@RequestMapping("/Review_write")
	public String Review_write(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
			 	
			  return "/Community/Review_write";
		
		
	}
	

	@RequestMapping("/Review_writeProc")
	public String Review_writeProc(ReviewDTO c_dto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {


		
		
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
		else {
			c_dto.setimage("66904c17-2c33-4832-b4a0-bf3665d73e88.png");
		}
		
		if(c_dto.gettype()==1)
		r_service.contrast_insert(c_dto);
			
		if(c_dto.gettype()==2)	
		r_service.car_insert(c_dto);
		
		if(c_dto.gettype()==3)	
			r_service.info_insert(c_dto);
		

		return "redirect:/2848/Content_list?key=edlclsjxm";
	}


	@RequestMapping("/Review_update")
	public String update(int r_no, Model model) throws Exception {

		
		
		ReviewDTO view = r_service.select_one(r_no);
		
		//view.settext(view.gettext().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		session.setAttribute("view", view);
		return "/Community/Review_update";
	}
	
	//�궘�젣
		@RequestMapping("/Review_delete")
		public void delete(int r_no, HttpServletResponse res) throws Exception{

			r_service.r_delete(r_no);

			res.sendRedirect("/2848/Content_list?key=edlclsjxm");
		}
	
	//�닔�젙
		@RequestMapping("/Review_updateProc")
		public String n_updateProc(ReviewDTO rdto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {
			

				if(files[0].getSize() !=0) {
				
				String realPath = "../../resources/img/";
				System.out.println(realPath);
				File tempFilepath = new File(realPath);
				
				if(!tempFilepath.exists()) {
					tempFilepath.mkdir();
				}
				

					UUID uuid = UUID.randomUUID();
					String extension = FilenameUtils.getExtension(files[0].getOriginalFilename());
					String sysname = uuid.toString()+"."+extension;
					

					rdto.setimage(sysname);
				
					files[0].transferTo(new File(realPath+"/"+sysname));
					
					
				
				
			} 
			else {
				int st_no = rdto.getid();
				
				ReviewDTO dto = r_service.select_one(st_no);
				
					 rdto.setimage(dto.getimage());
				

			}
			

			
				if(rdto.gettitle() ==null) {
					int st_no = rdto.getid();
					
					ReviewDTO dto = r_service.select_one(st_no);
					rdto.settitle(dto.gettitle());
				}
				
				if(rdto.gettext() ==null) {
					int st_no = rdto.getid();
					
					ReviewDTO dto = r_service.select_one(st_no);
					rdto.settext(dto.gettext());
				}
				
				
				
			
			r_service.r_update(rdto);

			return "redirect:/Community/Review?cpage=1#target";
		}
		
		
	
	
	
}
