package pokas.web.controller;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import pokas.web.dto.AdminDTO;
import pokas.web.dto.HotdealDTO;
import pokas.web.service.HotdealService;
import pokas.web.dto.PromotionDTO;
import pokas.web.dto.ReviewDTO;
import pokas.web.service.PromotionService;

@Controller
@RequestMapping("/Promotion/")
public class PromotionController {
	
	@Autowired
	private HttpSession session;
	@Autowired
	private HotdealService h_service;
	@Autowired
	private PromotionService p_service;

	//�씠�떖�쓽 �빂�뵜
	@RequestMapping("/Hotdeal")
	public String list(Model model, Integer cpage) throws Exception {
			

			List<HotdealDTO> list = h_service.hot_all(cpage);			
			String navi = h_service.getPageNavi(cpage);
			AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
			model.addAttribute("mdto",mdto); 			  
			model.addAttribute("list", list);
			model.addAttribute("navi", navi);
			model.addAttribute("cpage", cpage);
			  
	
			  return "/Promotion/Hotdeal";
		
		
	}
	
	
	@RequestMapping("/Hot_write")
	public String Hot_write(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
			 	
			  return "/Promotion/Hot_write";
		
		
	}
	
	

	@RequestMapping("/Hotdeal_write")
	public String Hotdeal_writeProc(HotdealDTO m_dto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {


		
		
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
					m_dto.setimage(sysname);
				
				
			
			
		} 
		else {
			m_dto.setimage("66904c17-2c33-4832-b4a0-bf3665d73e88.png");
		}
		
		
		
		h_service.hot_insert(m_dto);

		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	
	

	//�씤湲� 李⑥쥌
	@RequestMapping("/Popular")
	public String Popular(Model model, Integer cpage) throws Exception{
		
		List<PromotionDTO> list = p_service.prom_all(cpage);
		String navi = p_service.getPageNavi(cpage);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		model.addAttribute("mdto",mdto); 			  

		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		model.addAttribute("cpage", cpage);

		return "/Promotion/Popular";
	}

	
	@RequestMapping("/Pop_write")
	public String Pop_write(Model model, Integer cpage) throws Exception {
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
			 	
			  return "/Promotion/Pop_write";
		
		
	}
	
	
	@RequestMapping("/Promotion_write")
	public String Promotion_writeProc(PromotionDTO m_dto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {


		
		
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
					m_dto.setimage(sysname);
				
				
			
			
		} 
		
		
		
		p_service.prom_insert(m_dto);

		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	
	
	
	@RequestMapping("/Promotion_update")
	public String Pro_update(int id, Model model) throws Exception {

		
		
		PromotionDTO view = p_service.prom_one(id);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		
		session.setAttribute("view", view);
		return "/Promotion/Pop_update";
	}
	
	@RequestMapping("/Hotdeal_update")
	public String Hotdeal_update(int id, Model model) throws Exception {

		
		
		HotdealDTO view = h_service.hot_one(id);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		
		session.setAttribute("view", view);
		return "/Promotion/Hot_update";
	}
	

	//�닔�젙
	@RequestMapping("/Promotion_updateProc")
	public String p_updateProc(PromotionDTO rdto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {
				

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
					
			PromotionDTO dto = p_service.prom_one(rdto.getid());
					
				 //rdto.setimage(dto.getimage());
					

			}
					
			p_service.prom_update(rdto);
			return "redirect:/Promotion/Popular?cpage=1";
		}
	
	//�닔�젙
		@RequestMapping("/Hotdeal_updateProc")
		public String h_updateProc(HotdealDTO rdto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {
					

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
						
				HotdealDTO dto = h_service.hot_one(st_no);
						
					// rdto.setimage(dto.getimage());
						

				}
						
				h_service.hot_update(rdto);
				return "redirect:/Promotion/Hotdeal?cpage=1";
			}
	
}
