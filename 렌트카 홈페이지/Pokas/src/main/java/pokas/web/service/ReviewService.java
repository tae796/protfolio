package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.ReviewDAO;
import pokas.web.dto.ReviewDTO;
import pokas.web.dto.AdminDTO;
import pokas.web.staticInfo.Configuration;

//Configuration 클래스 명 및 내용확인해보기

@Service
public class ReviewService {

	@Autowired
	private ReviewDAO rdao;

	//작성
	public int contrast_insert(ReviewDTO rdto) throws Exception {
		return rdao.contrast_insert(rdto);
	}

	public int car_insert(ReviewDTO rdto) throws Exception {
		return rdao.car_insert(rdto);
	}
	
	public int info_insert(ReviewDTO rdto) throws Exception {
		return rdao.info_insert(rdto);
	}
	

	public List<ReviewDTO> contrast_select(int cpage) throws Exception {
			int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
			int end = (Configuration.RECORD_COUNT_PER_PAGE);

			Map<String,Integer> number = new HashMap<String, Integer>();
			number.put("start", start);
			number.put("end", end);
			
			return rdao.contrast_select(number);
			
	}
	
	
	public List<ReviewDTO> car_select(int cpage) throws Exception {
			int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
			int end = (Configuration.RECORD_COUNT_PER_PAGE);

			Map<String,Integer> number = new HashMap<String, Integer>();
			number.put("start", start);
			number.put("end", end);
			
			return rdao.car_select(number);
			
	}
	
	public List<ReviewDTO> info_select(int cpage) throws Exception {
		int start = cpage*Configuration.RECORD_COUNT_PER_PAGE - (Configuration.RECORD_COUNT_PER_PAGE);
		int end = (Configuration.RECORD_COUNT_PER_PAGE);

		Map<String,Integer> number = new HashMap<String, Integer>();
		number.put("start", start);
		number.put("end", end);
		
		return rdao.info_select(number);
		
	}


	//
	public ReviewDTO contrast_select_one(int id) throws Exception {
		return rdao.contrast_select_one(id);
	}

	public ReviewDTO car_select_one(int id) throws Exception {
		return rdao.car_select_one(id);
	}

	public ReviewDTO info_select_one(int id) throws Exception {
		return rdao.info_select_one(id);
	}
	
	public ReviewDTO select_one(int id) throws Exception {
		return rdao.select_one(id);
	}

	public int r_update(ReviewDTO rdto) throws Exception {
		return rdao.r_update(rdto);
	}
	
	// 삭제
	public int r_delete(int id) throws Exception {
		return rdao.r_delete(id);
	}
	

	
	//계약서작성 글 count 후 list 출력
		public String getPageNavi1(int userCurrentPage) throws SQLException, Exception {
			
			//공지사항 count
			int recordTotalCount = rdao.selectCount1(); 

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
				sb.append("<a href='/Community/Review?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Community/Review?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Community/Review?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}

	//차량출고 글 count 후 list 출력
		public String getPageNavi2(int userCurrentPage) throws SQLException, Exception {
			
			//공지사항 count
			int recordTotalCount = rdao.selectCount2(); 

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
				sb.append("<a href='/Community/Review_car?type=0&cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Community/Review_car?type=0&cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Community/Review_car?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}
		
public String getPageNavi3(int userCurrentPage) throws SQLException, Exception {
			
			//공지사항 count
			int recordTotalCount = rdao.selectCount3(); 

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
				sb.append("<a href='/Community/Info?cpage="+(startNavi-1)+"'><</a>");
			}
			for(int i = startNavi ; i<=endNavi; i++) {

				sb.append("<a id='cpage"+i+"' href='/Community/Review_car?cpage="+i+"'>"+i+"</a>");
			}
			if(needNext) {

				sb.append("<a href='/Community/Review_car?cpage="+(endNavi+1)+"'>></a>");
			}

			return sb.toString();
		}


}
