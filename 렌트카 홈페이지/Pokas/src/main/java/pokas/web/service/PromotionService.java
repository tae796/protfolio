package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.PromotionDAO;
import pokas.web.dto.PromotionDTO;
import pokas.web.dto.ReviewDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class PromotionService {

	@Autowired
	private PromotionDAO pdao;


	// 업로드
	public int prom_insert(PromotionDTO pdto) throws Exception {
		return pdao.prom_insert(pdto);
	}
	
	public PromotionDTO prom_one(int id) throws Exception{
		return pdao.prom_one(id);
	}
	
	public int prom_update(PromotionDTO pdto) throws Exception {
		return pdao.prom_update(pdto);
	}
	
	public List<PromotionDTO> prom_all1() throws Exception {
		return pdao.prom_all1();
	}
	
	//전체
	
		public List<PromotionDTO> prom_all(int cpage) throws Exception {
			int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
			int end = (Configuration.RECORD_COUNT_PER_PAGE);

			Map<String,Integer> number = new HashMap<String, Integer>();
			number.put("start", start);
			number.put("end", end);
			
			return pdao.prom_all(number);
			
	}

	
	//삭제
	public int prom_delete(int id) throws Exception {
		return pdao.prom_delete(id);
	}

	
	// 글 count 후 list 출력
		public String getPageNavi(int userCurrentPage) throws SQLException, Exception {
			
			//공지사항 count
			int recordTotalCount = pdao.selectCount(); 

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
				sb.append("<a href='/Promotion/Popular?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Promotion/Popular?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Promotion/Popular?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}


}
