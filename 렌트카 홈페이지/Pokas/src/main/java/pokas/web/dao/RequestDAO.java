package pokas.web.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.RequestDTO;

@Repository
public class RequestDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	//占쎈쾻嚥∽옙
	public int req_insert(RequestDTO rq_dto) {
		return mybatis.insert("request.req_insert", rq_dto);
	}
	
	//筌뤴뫖以� �빊�뮆�젾
	public List<RequestDTO> req_all() {
		return mybatis.selectList("request.req_all");
	}
	
	public List<RequestDTO> req_all_member_filter(String member) {
		return mybatis.selectList("request.req_all_member_filter",member);
	}
	
	public List<RequestDTO> req_all_status_filter(String status) {
		return mybatis.selectList("request.req_all_status_filter",status);
	}
	
	public List<RequestDTO> req_all_by_member() {
		return mybatis.selectList("request.req_all_by_member");
	}
	public List<RequestDTO> req_all_by_name() {
		return mybatis.selectList("request.req_all_by_name");
	}
	public List<RequestDTO> req_all_by_status() {
		return mybatis.selectList("request.req_all_by_status");
	}
	
	
	public RequestDTO req_one(int id) {
		return mybatis.selectOne("request.req_one",id);
	}
	
	
	public List<RequestDTO> req_all_center(String center) {
		return mybatis.selectList("request.req_all_center",center);
	}
	
	 public List<RequestDTO> req_all_team(Map<String,String> center) {
		 return mybatis.selectList("request.req_all_team",center); 
		 }
	
	 public List<RequestDTO> req_all_name(String name) {
		 return mybatis.selectList("request.req_all_name",name); 
		 }
	
	
	//野껓옙占쎄퉳 master
	public List<RequestDTO> req_search_name(String name) {
		return mybatis.selectList("request.req_search_name",name);
	}
	public List<RequestDTO> req_search_brand(String brand) {
		return mybatis.selectList("request.req_search_brand",brand);
	}
	public List<RequestDTO> req_search_region(String region) {
		return mybatis.selectList("request.req_search_region",region);
	}
	public List<RequestDTO> req_search_phone(String phone) {
		return mybatis.selectList("request.req_search_phone",phone);
	}
	public List<RequestDTO> req_search_date(Map<String,String> rqdto) {
		return mybatis.selectList("request.req_search_date",rqdto);
	}
	
	//野껓옙占쎄퉳 center 
	public List<RequestDTO> req_search_name_center(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_name_center",rqdto);
	}
	public List<RequestDTO> req_search_brand_center(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_brand_center",rqdto);
	}
	public List<RequestDTO> req_search_region_center(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_region_center",rqdto);
	}
	public List<RequestDTO> req_search_phone_center(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_phone_center",rqdto);
	}
	public List<RequestDTO> req_search_date_center(Map<String,String> rqdto) {
		return mybatis.selectList("request.req_search_date_center",rqdto);
	}
	
	
	  //野껓옙占쎄퉳 manager
	public List<RequestDTO> req_search_name_team(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_name_team",rqdto); 
		} 
	public List<RequestDTO> req_search_brand_team(RequestDTO rqdto) { 
		return mybatis.selectList("request.req_search_brand_team",rqdto); 
	} 
	public List<RequestDTO> req_search_region_team(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_region_team",rqdto); 
		} 
	public List<RequestDTO> req_search_phone_team(RequestDTO rqdto) {
		return mybatis.selectList("request.req_search_phone_team",rqdto);
		} 
	public List<RequestDTO> req_search_date_team(Map<String,String> rqdto) { 
		return mybatis.selectList("request.req_search_date_team",rqdto);
		}
	
	  //野껓옙占쎄퉳 manager
		public List<RequestDTO> req_search_name_name(RequestDTO rqdto) {
			return mybatis.selectList("request.req_search_name_name",rqdto); 
			} 
		public List<RequestDTO> req_search_brand_name(RequestDTO rqdto) { 
			return mybatis.selectList("request.req_search_brand_name",rqdto); 
		} 
		public List<RequestDTO> req_search_region_name(RequestDTO rqdto) {
			return mybatis.selectList("request.req_search_region_name",rqdto); 
			} 
		public List<RequestDTO> req_search_phone_name(RequestDTO rqdto) {
			return mybatis.selectList("request.req_search_phone_name",rqdto);
			} 
		public List<RequestDTO> req_search_date_name(Map<String,String> rqdto) { 
			return mybatis.selectList("request.req_search_date_name",rqdto);
			}
	 
	// 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜 master
	public int req_all_count() {
		return mybatis.selectOne("request.req_all_count");
	}
	
	
	public List<RequestDTO> req_today() {
		return mybatis.selectList("request.req_today");
	}
	
	public int req_today_count() {
		return mybatis.selectOne("request.req_today_count");
	}
	public List<RequestDTO> req_yesterday() {
		return mybatis.selectList("request.req_yesterday");
	}
	
	public int req_yesterday_count() {
		return mybatis.selectOne("request.req_yesterday_count");
	}
	public List<RequestDTO> req_month() {
		return mybatis.selectList("request.req_month");
	}
	
	public int req_month_count() {
		return mybatis.selectOne("request.req_month_count");
	}
	
	
	// 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜  center
	public int req_all_count_center(String center) {
		return mybatis.selectOne("request.req_all_count_center",center);
	}
	
	
	public List<RequestDTO> req_today_center(String center) {
		return mybatis.selectList("request.req_today_center",center);
	}
	
	public int req_today_count_center(String center) {
		return mybatis.selectOne("request.req_today_count_center",center);
	}
	public List<RequestDTO> req_yesterday_center(String center) {
		return mybatis.selectList("request.req_yesterday_center",center);
	}
	
	public int req_yesterday_count_center(String center) {
		return mybatis.selectOne("request.req_yesterday_count_center",center);
	}
	public List<RequestDTO> req_month_center(String center) {
		return mybatis.selectList("request.req_month_center",center);
	}
	
	public int req_month_count_center(String center) {
		return mybatis.selectOne("request.req_month_count_center",center);
	}
	
	  // 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜 team 
	public int req_all_count_team(Map<String,String> center) { 
		return  mybatis.selectOne("request.req_all_count_team",center); 
	}
	  
	  public List<RequestDTO> req_today_team(Map<String,String> center) { 
		  return mybatis.selectList("request.req_today_team",center);
		  }
	  
	  public int req_today_count_team(Map<String,String> center) { 
		  return mybatis.selectOne("request.req_today_count_team",center); 
		  } 
	  public List<RequestDTO> req_yesterday_team(Map<String,String> center) { 
		  return mybatis.selectList("request.req_yesterday_team",center); 
		  }
	  
	  public int req_yesterday_count_team(Map<String,String> center) { 
		  return mybatis.selectOne("request.req_yesterday_count_team",center); 
		  }
	  public List<RequestDTO> req_month_team(Map<String,String> center) { 
		  return mybatis.selectList("request.req_month_team",center); 
		  }
	  
	  public int req_month_count_team(Map<String,String> center) { 
		  return mybatis.selectOne("request.req_month_count_team",center); 
		  }
	
	  // 占쎄텊筌욎뮆苡�占쎈뱣 揶쏆뮇�땾燁삳똻�뒲占쎈뱜, �뵳�딅뮞占쎈뱜 member
		public int req_all_count_name(String center) { 
			return  mybatis.selectOne("request.req_all_count_name",center); 
		}
		  
		  public List<RequestDTO> req_today_name(String center) { 
			  return mybatis.selectList("request.req_today_name",center);
			  }
		  
		  public int req_today_count_name(String center) { 
			  return mybatis.selectOne("request.req_today_count_name",center); 
			  } 
		  public List<RequestDTO> req_yesterday_name(String center) { 
			  return mybatis.selectList("request.req_yesterday_name",center); 
			  }
		  
		  public int req_yesterday_count_name(String center) { 
			  return mybatis.selectOne("request.req_yesterday_count_name",center); 
			  }
		  public List<RequestDTO> req_month_name(String center) { 
			  return mybatis.selectList("request.req_month_name",center); 
			  }
		  
		  public int req_month_count_name(String  center) { 
			  return mybatis.selectOne("request.req_month_count_name",center); 
			  }
		
		
	//占쎈땾占쎌젟
	public int req_update(RequestDTO rq_dto) {
		return mybatis.update("request.req_update",rq_dto);
	}
	
	
	//占쎄텣占쎌젫
	public int req_delete(int id) {
		return mybatis.delete("request.req_delete", id);
	}

}

