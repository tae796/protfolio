package pokas.web.controller;


import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import pokas.web.dto.AdminDTO;
import pokas.web.dto.CarDTO;
import pokas.web.dto.PromotionDTO;
import pokas.web.service.CarService;


@Controller
@RequestMapping("/Search")
public class SearchController {

	@Autowired
	private HttpSession session;

	@Autowired
	private CarService c_service;



	//�삤�넗由ъ뒪��?
	@RequestMapping("/Autolease")
	public String Autolease(Model model, Integer cpage, String brand, String car_type, String oil_type) throws Exception {

		if(brand ==null  || brand =="제조사") {
			List<CarDTO> list = c_service.c_list_auto(cpage);
			String navi = c_service.getPageNavi2(cpage);
			AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
			
			model.addAttribute("mdto",mdto);  

			model.addAttribute("list", list);
			model.addAttribute("navi", navi);
			model.addAttribute("cpage", cpage);
			
			
		}
		
		else {
			//차종이 없는경우 4가지 (XXX는 생략)
			if(car_type == "" || car_type == null || car_type == "차종") {
				
				if(brand == "" || brand == null || brand =="제조사") {
					CarDTO tmp = new CarDTO();
					String oil_types[] = oil_type.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i =0 ; i < oil_types.length; i++) {
						tmp.setoil_type(oil_types[i]);
						tmplist.addAll(c_service.c_search_auto_by_oil(tmp));
						tmplist.stream().distinct().collect(Collectors.toList());

						
					}
					model.addAttribute("list", tmplist);
				}
				else if(oil_type == "" || oil_type == null || oil_type =="연료") {
					CarDTO tmp = new CarDTO();
					String brands[] = brand.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i =0 ; i < brands.length; i++) {
						tmp.setbrand(brands[i]);
						tmplist.addAll(c_service.c_search_auto(tmp));
						tmplist.stream().distinct().collect(Collectors.toList());

						
					}
					model.addAttribute("list", tmplist);
				}
				else {
					CarDTO tmp = new CarDTO();
					String brands[] = brand.split(",");
					String oil_types[] = oil_type.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i = 0 ; i <brands.length ; i++) {
						for (int j = 0 ; j<oil_types.length ; j ++) {
							tmp.setbrand(brands[i]);
							tmp.setoil_type(oil_types[j]);
							tmplist.addAll(c_service.c_search_auto_brand_oil(tmp));
							tmplist.stream().distinct().collect(Collectors.toList());
						}
					}
					model.addAttribute("list", tmplist);
				}
				

			}
			// 차종이 있는경우 4가지
			else {
				if(oil_type == "" || oil_type == null || oil_type =="연료") {
					if(brand == "" || brand == null || brand =="제조사") {
						CarDTO tmp = new CarDTO();
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i =0 ; i < car_types.length; i++) {
							tmp.setsize(car_types[i]);
							tmplist.addAll(c_service.c_search_auto_by_size(tmp));
							tmplist.stream().distinct().collect(Collectors.toList());

							
						}
						model.addAttribute("list", tmplist);
					}
					else {
						CarDTO tmp = new CarDTO();
						String brands[] = brand.split(",");
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <brands.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								tmp.setbrand(brands[i]);
								tmp.setsize(car_types[j]);
								tmplist.addAll(c_service.c_search_auto_size(tmp));
								tmplist.stream().distinct().collect(Collectors.toList());
							}
						}
						model.addAttribute("list", tmplist);
					}
					
				
				}
				else {
					if(brand == "" || brand == null || brand =="제조사") {
						CarDTO tmp = new CarDTO();
						String oil_types[] = oil_type.split(",");
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <oil_types.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								tmp.setoil_type(oil_types[i]);
								tmp.setsize(car_types[j]);
								tmplist.addAll(c_service.c_search_auto_size_oil(tmp));
								tmplist.stream().distinct().collect(Collectors.toList());
							}
						}
						model.addAttribute("list", tmplist);
					}
					else {
						CarDTO tmp = new CarDTO();
						
						String brands[] = brand.split(",");
						String car_types[] = car_type.split(",");
						String oil_types[] = oil_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <brands.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								for(int k = 0 ; k<oil_types.length ; k++) {
									tmp.setbrand(brands[i]);
									tmp.setoil_type(oil_types[j]);
									tmp.setsize(car_types[k]);
									tmplist.addAll(c_service.c_search_auto_oil(tmp));
									tmplist.stream().distinct().collect(Collectors.toList());
								}
							}
								
						}
						
						model.addAttribute("list", tmplist);
					}
					
					
				}
				
			}
			
			
			
			
			
		}
		
		
		
		
		
		return "/Search/Autolease";
	}
	
	//�옣湲곕젋�듃��?
	@RequestMapping("/Long_term")
	public String Long_term(Model model, Integer cpage,String brand, String car_type, String oil_type) throws Exception {

		
		
		if(brand ==null || brand =="제조사") {
		List<CarDTO> list = c_service.c_list_rent(cpage);
		String navi = c_service.getPageNavi1(cpage);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);    
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
		model.addAttribute("cpage", cpage);

		
		}
		else {
			
			if(car_type == "" || car_type == null || car_type == "차종") {
				
				if(brand == "" || brand == null || brand =="제조사") {
					CarDTO tmp = new CarDTO();
					String oil_types[] = oil_type.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i =0 ; i < oil_types.length; i++) {
						tmp.setoil_type(oil_types[i]);
						tmplist.addAll(c_service.c_search_rent_by_oil(tmp));
						tmplist.stream().distinct().collect(Collectors.toList());

						
					}
					model.addAttribute("list", tmplist);
				}
				else if(oil_type == "" || oil_type == null || oil_type =="연료") {
					CarDTO tmp = new CarDTO();
					String brands[] = brand.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i =0 ; i < brands.length; i++) {
						tmp.setbrand(brands[i]);
						tmplist.addAll(c_service.c_search_rent(tmp));
						tmplist.stream().distinct().collect(Collectors.toList());

						
					}
					model.addAttribute("list", tmplist);
				}
				else {
					CarDTO tmp = new CarDTO();
					String brands[] = brand.split(",");
					String oil_types[] = oil_type.split(",");
					List<CarDTO> tmplist = new ArrayList<CarDTO>();
					
					for(int i = 0 ; i <brands.length ; i++) {
						for (int j = 0 ; j<oil_types.length ; j ++) {
							tmp.setbrand(brands[i]);
							tmp.setoil_type(oil_types[j]);
							tmplist.addAll(c_service.c_search_rent_brand_oil(tmp));
							tmplist.stream().distinct().collect(Collectors.toList());
						}
					}
					model.addAttribute("list", tmplist);
				}
				

			}
			// 차종이 있는경우 4가지
			else {
				if(oil_type == "" || oil_type == null || oil_type =="연료") {
					if(brand == "" || brand == null || brand =="제조사") {
						CarDTO tmp = new CarDTO();
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i =0 ; i < car_types.length; i++) {
							tmp.setsize(car_types[i]);
							tmplist.addAll(c_service.c_search_rent_by_size(tmp));
							tmplist.stream().distinct().collect(Collectors.toList());

							
						}
						model.addAttribute("list", tmplist);
					}
					else {
						CarDTO tmp = new CarDTO();
						String brands[] = brand.split(",");
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <brands.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								tmp.setbrand(brands[i]);
								tmp.setsize(car_types[j]);
								tmplist.addAll(c_service.c_search_rent_size(tmp));
								tmplist.stream().distinct().collect(Collectors.toList());
							}
						}
						model.addAttribute("list", tmplist);
					}
					
				
				}
				else {
					if(brand == "" || brand == null || brand =="제조사") {
						CarDTO tmp = new CarDTO();
						String oil_types[] = oil_type.split(",");
						String car_types[] = car_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <oil_types.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								tmp.setoil_type(oil_types[i]);
								tmp.setsize(car_types[j]);
								tmplist.addAll(c_service.c_search_rent_size_oil(tmp));
								tmplist.stream().distinct().collect(Collectors.toList());
							}
						}
						model.addAttribute("list", tmplist);
					}
					else {
						CarDTO tmp = new CarDTO();
						
						String brands[] = brand.split(",");
						String car_types[] = car_type.split(",");
						String oil_types[] = oil_type.split(",");
						List<CarDTO> tmplist = new ArrayList<CarDTO>();
						
						for(int i = 0 ; i <brands.length ; i++) {
							for (int j = 0 ; j<car_types.length ; j ++) {
								for(int k = 0 ; k<oil_types.length ; k++) {
									tmp.setbrand(brands[i]);
									tmp.setoil_type(oil_types[j]);
									tmp.setsize(car_types[k]);
									tmplist.addAll(c_service.c_search_rent_oil(tmp));
									tmplist.stream().distinct().collect(Collectors.toList());
								}
							}
								
						}
						
						model.addAttribute("list", tmplist);
					}
					
					
				}
				
			}
			
			
			
			
			
		}
		return "/Search/Long_term";
	}
	

	
	

	@RequestMapping("/Car_write")
	public String Car_write(Model model, Integer cpage) throws Exception {
			
			 	
			  return "/Search/Car_write";
		
		
	}
	
	
	@RequestMapping("/Car_rent_delete")
	public void rent_delete(int r_no, HttpServletResponse res) throws Exception{

		c_service.c_delete(r_no);

		res.sendRedirect("/2848/Search/Long_term?cpage=1");
	}
	
	@RequestMapping("/Car_auto_delete")
	public void auto_delete(int r_no, HttpServletResponse res) throws Exception{

		c_service.c_delete(r_no);

		res.sendRedirect("/2848/Search/Autolease?cpage=1");
	}
	
	
	@RequestMapping("/Car_update")
	public String c_update(int id, Model model) throws Exception {

		
		
		CarDTO view = c_service.c_select_one(id);
		AdminDTO mdto = (AdminDTO) session.getAttribute("myinfo");
		
		model.addAttribute("mdto",mdto);  
		
		session.setAttribute("view", view);
		return "/Search/Car_update";
	}
	
	@RequestMapping("/Car_updateProc")
	public String c_updateProc(CarDTO rdto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {
				

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
					
			CarDTO dto = c_service.c_select_one(rdto.getid());
					
				 rdto.setimage(dto.getimage());
					

			}
					
			c_service.c_update(rdto);
			
			return "redirect:/Search/Long_term?cpage=1#target#update";
		}

	@RequestMapping("/Car_writeProc")
	public String Car_writeProc(CarDTO c_dto, HttpServletRequest req, HttpServletResponse res, MultipartFile[] files) throws Exception {


		
		
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
		c_service.c_insert_rent(c_dto);	
			
		if(c_dto.gettype()==2)	
		c_service.c_insert_auto(c_dto);
		

		return "redirect:/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	}
	

}
