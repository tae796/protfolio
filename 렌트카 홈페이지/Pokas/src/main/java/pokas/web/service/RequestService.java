package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pokas.web.dao.RequestDAO;
import pokas.web.dto.RequestDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class RequestService {

	@Autowired
	private RequestDAO rqdao;
	
	// 占쎈쾻嚥∽옙
	public int req_insert(RequestDTO rqdto) throws Exception {
		
		return rqdao.req_insert(rqdto);
	}
	
	public int req_update(RequestDTO rqdto) throws Exception {
		
		return rqdao.req_update(rqdto);
	}
	
	// 揶쏉옙占쎌죬占쎌궎疫뀐옙
	public List<RequestDTO> req_all() throws Exception {
		
		return rqdao.req_all();
	}
	
	
	public List<RequestDTO> req_all_member_filter(String member) throws Exception {
		
		return rqdao.req_all_member_filter(member);
	}
	
	public List<RequestDTO> req_all_status_filter(String status) throws Exception {
		
		return rqdao.req_all_status_filter(status);
	}
	
	public List<RequestDTO> req_all_by_member() throws Exception {
		
		return rqdao.req_all_by_member();
	}
	public List<RequestDTO> req_all_by_name() throws Exception {
	
	return rqdao.req_all_by_name();
}
	public List<RequestDTO> req_all_by_status() throws Exception {
	
	return rqdao.req_all_by_status();
}

	public RequestDTO req_one(int id) throws Exception {
		
		return rqdao.req_one(id);
	}
	
	
	public List<RequestDTO> req_all_center(String center) throws Exception {
		
		return rqdao.req_all_center(center);
	}

	
	public List<RequestDTO> req_all_team(String center, String team) throws Exception { 
		Map<String,String> number = new HashMap<String, String>();
		number.put("center", center); 
		number.put("team", team); 
		return rqdao.req_all_team(number);
		}
	
	public List<RequestDTO> req_all_name(String member) throws Exception {
	
		return rqdao.req_all_name(member);
	}
	 
	//野껓옙占쎄퉳 master
	public List<RequestDTO> req_search_name(String name) throws Exception {
		
		return rqdao.req_search_name(name);
	}
	
	public List<RequestDTO> req_search_brand(String brand) throws Exception {
			
			return rqdao.req_search_brand(brand);
	}
	public List<RequestDTO> req_search_region(String region) throws Exception {
		
		return rqdao.req_search_region(region);
	}
	public List<RequestDTO> req_search_phone(String phone) throws Exception {
		
		return rqdao.req_search_phone(phone);
	}
	public List<RequestDTO> req_search_date(String start,String end) throws Exception {
		Map<String,String> number = new HashMap<String, String>();
		number.put("start", start);
		number.put("end", end);
		return rqdao.req_search_date(number);
	}

	//野껓옙占쎄퉳 center
	public List<RequestDTO> req_search_name_center(RequestDTO rqdto) throws Exception {
			
		return rqdao.req_search_name_center(rqdto);
	}
		
	public List<RequestDTO> req_search_brand_center(RequestDTO rqdto) throws Exception {
				
			return rqdao.req_search_brand_center(rqdto);
	}
	public List<RequestDTO> req_search_region_center(RequestDTO rqdto) throws Exception {
		
		return rqdao.req_search_region_center(rqdto);
	}
	public List<RequestDTO> req_search_phone_center(RequestDTO rqdto) throws Exception {
			
		return rqdao.req_search_phone_center(rqdto);
	}
	public List<RequestDTO> req_search_date_center(String start,String end,String center) throws Exception {
		Map<String,String> number = new HashMap<String, String>();
		number.put("start", start);
		number.put("end", end);
		number.put("center", center);
		
		
		return rqdao.req_search_date_center(number);
	}
	

	
	
	
	
	  //野껓옙占쎄퉳 team 
		
	public List<RequestDTO> req_search_name_team(RequestDTO rqdto) throws Exception {
		  
		  return rqdao.req_search_name_team(rqdto); 
		  }
		  
	
	  public List<RequestDTO> req_search_brand_team(RequestDTO rqdto) throws Exception {
	  return rqdao.req_search_brand_team(rqdto);
	  }
	  
	  public List<RequestDTO> req_search_region_team(RequestDTO rqdto) throws Exception {
	  return rqdao.req_search_region_team(rqdto);
	  }
	  
	  public List<RequestDTO> req_search_phone_team(RequestDTO rqdto) throws Exception {
	  return rqdao.req_search_phone_team(rqdto);
	  } 
	  
	  public List<RequestDTO> req_search_date_team(String start,String end,String center,String team) throws Exception { 
	  Map<String,String> number = new HashMap<String, String>();
	  number.put("start", start); 
	  number.put("end", end); 
	  number.put("center",center);
	  number.put("team", team);
	  
	  
	  return rqdao.req_search_date_team(number); 
	  }
	 
	
	  //野껓옙占쎄퉳 member 
		
		public List<RequestDTO> req_search_name_name(RequestDTO rqdto) throws Exception {
			  
			  return rqdao.req_search_name_team(rqdto); 
			  }
			  
		
		  public List<RequestDTO> req_search_brand_name(RequestDTO rqdto) throws Exception {
		  return rqdao.req_search_brand_team(rqdto);
		  }
		  
		  public List<RequestDTO> req_search_region_name(RequestDTO rqdto) throws Exception {
		  return rqdao.req_search_region_team(rqdto);
		  }
		  
		  public List<RequestDTO> req_search_phone_name(RequestDTO rqdto) throws Exception {
		  return rqdao.req_search_phone_team(rqdto);
		  } 
		  
		  public List<RequestDTO> req_search_date_name(String start,String end,String member) throws Exception { 
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("start", start); 
		  number.put("end", end); 
		  number.put("member",member);
		  
		  
		  return rqdao.req_search_date_name(number); 
		  }
		 
	
	
	// 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜 master
	public int req_all_count() throws Exception {
		
		return rqdao.req_all_count();
	}
	
	
	public List<RequestDTO> req_today() throws Exception {
		
		return rqdao.req_today();
	}
	public int req_today_count() throws Exception {
		
		return rqdao.req_today_count();
	}
	public List<RequestDTO> req_yesterday() throws Exception {
		
		return rqdao.req_yesterday();
	}
	public int req_yesterday_count() throws Exception {
		
		return rqdao.req_yesterday_count();
	}
	public List<RequestDTO> req_month() throws Exception {
		
		return rqdao.req_month();
	}
	public int req_month_count() throws Exception {
		
		return rqdao.req_month_count();
	}
	
	
	// 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜 center
	public int req_all_count_center(String center) throws Exception {
		
		return rqdao.req_all_count_center(center);
	}
		
		
	public List<RequestDTO> req_today_center(String center) throws Exception {
			
		return rqdao.req_today_center(center);
	}
	public int req_today_count_center(String center) throws Exception {
		
		return rqdao.req_today_count_center(center);
	}
	public List<RequestDTO> req_yesterday_center(String center) throws Exception {
		
		return rqdao.req_yesterday_center(center);
	}
	public int req_yesterday_count_center(String center) throws Exception {
		
		return rqdao.req_yesterday_count_center(center);
	}
	public List<RequestDTO> req_month_center(String center) throws Exception {
		
		return rqdao.req_month_center(center);
	}
	public int req_month_count_center(String center) throws Exception {
		
		return rqdao.req_month_count_center(center);
	}
	
	
	
	  
	  //  member 
	public int req_all_count_team(String center,String team) throws Exception { 
		Map<String,String> number = new HashMap<String, String>(); 
		  number.put("center", center);
		  number.put("team", team);
		return rqdao.req_all_count_team(number); 
		}
	  
	  
	  public List<RequestDTO> req_today_team(String center,String team) throws Exception {
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center);
		  number.put("team", team);
		  return rqdao.req_today_team(number);
		 }
	  
	  public int req_today_count_team(String center,String team) throws Exception {
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center);
		  number.put("team", team);
		  return rqdao.req_today_count_team(number);
	  }
	  
	  public List<RequestDTO> req_yesterday_team(String center,String team) throws Exception { 
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center); 
		  number.put("team", team);
		  return rqdao.req_yesterday_team(number);
	  }
	  
	  public int req_yesterday_count_team(String center,String team) throws Exception { 
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center); 
		  number.put("team", team);
		  return rqdao.req_yesterday_count_team(number);
	  }
	  
	  public List<RequestDTO> req_month_team(String center,String team) throws Exception {
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center);
		  number.put("team", team);
		  return rqdao.req_month_team(number);
		  }
	  
	  public int req_month_count_team(String center,String team) throws Exception {
		  Map<String,String> number = new HashMap<String, String>();
		  number.put("center", center);
		  number.put("team", team);
		  return rqdao.req_month_count_team(number);
		  }
	 
	  //member

		public int req_all_count_name(String member) throws Exception { 
			Map<String,String> number = new HashMap<String, String>(); 

			return rqdao.req_all_count_name(member); 
			}
		  
		  
		  public List<RequestDTO> req_today_name(String member) throws Exception {
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_today_name(member);
			 }
		  
		  public int req_today_count_name(String member) throws Exception {
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_today_count_name(member);
		  }
		  
		  public List<RequestDTO> req_yesterday_name(String member) throws Exception { 
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_yesterday_name(member);
		  }
		  
		  public int req_yesterday_count_name(String member) throws Exception { 
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_yesterday_count_name(member);
		  }
		  
		  public List<RequestDTO> req_month_name(String member) throws Exception {
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_month_name(member);
			  }
		  
		  public int req_month_count_name(String member) throws Exception {
			  Map<String,String> number = new HashMap<String, String>();

			  return rqdao.req_month_count_name(member);
			  }
	
	
	
	public int req_delete(int id) throws Exception {
		return rqdao.req_delete(id);
	}
	
}
