package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.CarDAO;
import pokas.web.dto.CarDTO;
import pokas.web.dto.PromotionDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class CarService {

	@Autowired
	private CarDAO c_dao;
	
	//�옉�꽦
	public int c_insert_rent(CarDTO c_dto) throws Exception {
		return c_dao.c_insert_rent(c_dto);
	}
	public int c_insert_auto(CarDTO c_dto) throws Exception {
		return c_dao.c_insert_auto(c_dto);
	}
	
	
	
	public List<CarDTO> c_list_rent(int cpage) throws Exception {
			int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
			int end = (Configuration.RECORD_COUNT_PER_PAGE);

			Map<String,Integer> number = new HashMap<String, Integer>();
			number.put("start", start);
			number.put("end", end);

			return c_dao.c_list_rent(number);
	}
	
	public List<CarDTO> c_list_auto(int cpage) throws Exception {
		int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
		int end = (Configuration.RECORD_COUNT_PER_PAGE);

		Map<String,Integer> number = new HashMap<String, Integer>();
		number.put("start", start);
		number.put("end", end);
		
		return c_dao.c_list_auto(number);
		
}

	public CarDTO c_select_one(int id) throws Exception {
		return c_dao.c_select_one(id);
	}
	
	
	//size濡� 寃��깋
	public List<CarDTO> c_search_rent(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent(cdto);
	}
	
	public List<CarDTO> c_search_rent_by_size(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_by_size(cdto);
	}
	
	public List<CarDTO> c_search_rent_by_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_by_oil(cdto);
	}
	public List<CarDTO> c_search_rent_size(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_size(cdto);
	}
	
	public List<CarDTO> c_search_rent_brand_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_brand_oil(cdto);
	}
	
	public List<CarDTO> c_search_rent_size_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_size_oil(cdto);
	}
	
	public List<CarDTO> c_search_rent_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_rent_oil(cdto);
	}

	
	public List<CarDTO> c_search_auto(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto(cdto);
	}
	
	public List<CarDTO> c_search_auto_by_size(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_by_size(cdto);
	}
	
	public List<CarDTO> c_search_auto_by_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_by_oil(cdto);
	}
	
	public List<CarDTO> c_search_auto_size(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_size(cdto);
	}
	
	public List<CarDTO> c_search_auto_brand_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_brand_oil(cdto);
	}
	
	public List<CarDTO> c_search_auto_size_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_size_oil(cdto);
	}
	
	public List<CarDTO> c_search_auto_oil(CarDTO cdto) throws Exception {
		return c_dao.c_search_auto_oil(cdto);
	}
	
	
	
	public int c_update(CarDTO cdto) throws Exception {
		return c_dao.c_update(cdto);
	}
	
	
	// �궘�젣
	public int c_delete(int id) throws Exception {
		return c_dao.c_delete(id);
	}
	

	
	//怨듭��궗�빆 湲� count �썑 list 異쒕젰
		public String getPageNavi1(int userCurrentPage) throws SQLException, Exception {
			
			//怨듭��궗�빆 count
			int recordTotalCount = c_dao.selectCount1(); 

			int pageTotalCount = 0; 

			if(recordTotalCount % Configuration.RECORD_COUNT_PER_PAGE > 0) {
				pageTotalCount = recordTotalCount / Configuration.RECORD_COUNT_PER_PAGE + 1;
			}else {
				pageTotalCount = recordTotalCount / Configuration.RECORD_COUNT_PER_PAGE;
			}

			int currentPage = userCurrentPage;
			if(currentPage < 1) {
				currentPage = 1;
			}else if(currentPage > pageTotalCount) {
				currentPage = pageTotalCount;
			}

			int startNavi = (currentPage - 1) / Configuration.NAVI_COUNT_PER_PAGE * Configuration.NAVI_COUNT_PER_PAGE + 1;

			int endNavi = startNavi + Configuration.NAVI_COUNT_PER_PAGE - 1;

			if(endNavi > pageTotalCount) {endNavi = pageTotalCount;}

			boolean needPrev = true;
			boolean needNext = true;

			if(startNavi == 1) {needPrev = false;}
			if(endNavi == pageTotalCount) {needNext = false;}		

			StringBuilder sb = new StringBuilder();

			if(needPrev) {
				sb.append("<a href='/Search/Long_term?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Search/Long_term?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Search/Long_term?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}

		public String getPageNavi2(int userCurrentPage) throws SQLException, Exception {
			
			//怨듭��궗�빆 count
			int recordTotalCount = c_dao.selectCount2(); 

			int pageTotalCount = 0; 

			if(recordTotalCount % Configuration.RECORD_COUNT_PER_PAGE > 0) {
				pageTotalCount = recordTotalCount / Configuration.RECORD_COUNT_PER_PAGE + 1;
			}else {
				pageTotalCount = recordTotalCount / Configuration.RECORD_COUNT_PER_PAGE;
			}

			int currentPage = userCurrentPage;
			if(currentPage < 1) {
				currentPage = 1;
			}else if(currentPage > pageTotalCount) {
				currentPage = pageTotalCount;
			}

			int startNavi = (currentPage - 1) / Configuration.NAVI_COUNT_PER_PAGE * Configuration.NAVI_COUNT_PER_PAGE + 1;

			int endNavi = startNavi + Configuration.NAVI_COUNT_PER_PAGE - 1;

			if(endNavi > pageTotalCount) {endNavi = pageTotalCount;}

			boolean needPrev = true;
			boolean needNext = true;

			if(startNavi == 1) {needPrev = false;}
			if(endNavi == pageTotalCount) {needNext = false;}		

			StringBuilder sb = new StringBuilder();

			if(needPrev) {
				sb.append("<a href='/Search/Autolease?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Search/Autolease?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Search/Autolease?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}


	
	
	
	
	
	
}
