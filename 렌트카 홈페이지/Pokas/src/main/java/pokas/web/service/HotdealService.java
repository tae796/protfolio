package pokas.web.service;

import java.util.List;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.HotdealDAO;
import pokas.web.dto.HotdealDTO;
import pokas.web.dto.PromotionDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class HotdealService {

	@Autowired
	private HotdealDAO hdao;
	
	// 업로드
	public int hot_insert(HotdealDTO hdto) throws Exception {
		return hdao.hot_insert(hdto);
	}
	
	public HotdealDTO hot_one(int id) throws Exception{
		return hdao.hot_one(id);
	}
	
	public int hot_update(HotdealDTO hdto) throws Exception {
		return hdao.hot_update(hdto);
	}
	
	
	public List<HotdealDTO> hot_all1() throws Exception {
		return hdao.hot_all1();
	}
	//전체
	
		public List<HotdealDTO> hot_all(int cpage) throws Exception {
			int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
			int end = (Configuration.RECORD_COUNT_PER_PAGE);

			Map<String,Integer> number = new HashMap<String, Integer>();
			number.put("start", start);
			number.put("end", end);
			
			return hdao.hot_all(number);
			
	}

	
	//삭제
	public int hot_delete(int id) throws Exception {
		return hdao.hot_delete(id);
	}
	

	
	//공지사항 글 count 후 list 출력
		public String getPageNavi(int userCurrentPage) throws SQLException, Exception {
			
			//공지사항 count
			int recordTotalCount = hdao.selectCount(); 

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
				sb.append("<a href='/Promotion/Hotdeal?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Promotion/Hotdeal?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Promotiom/Hotdeal?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}



}
