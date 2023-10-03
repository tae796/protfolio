package pokas.web.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.ReviewDTO;


@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	

	
	//계약서작성 본문 등록
	public int contrast_insert(ReviewDTO rdto) {
		return mybatis.insert("review.contrast_insert",rdto);
	}

	//차량출고 본문 등록
	public int car_insert(ReviewDTO rdto) {
		return mybatis.insert("review.car_insert",rdto);
	}
	
	//장기렌트 & 리스 정보 본문 등록
	public int info_insert(ReviewDTO rdto) {
		return mybatis.insert("review.info_insert",rdto);
	}
	
	
	public int selectCount1() {
		return mybatis.selectOne("review.c_selectcount1");
	}

	public int selectCount2() {
		return mybatis.selectOne("review.c_selectcount2");
	}
	
	public int selectCount3() {
		return mybatis.selectOne("review.c_selectcount3");
	}


	//계약서작성 목록 출력
	public List<ReviewDTO> contrast_select(Map<String, Integer> rdto){
		return mybatis.selectList("review.contrast_select",rdto);
	}
	
	
	//차량출고 목록 출력
	public List<ReviewDTO> car_select(Map<String, Integer> rdto) {
		return mybatis.selectList("review.car_select",rdto);
	}
	
	
	
	//장기렌트 & 리스 정보 목록 출력
	public List<ReviewDTO> info_select(Map<String, Integer> rdto) {
		return mybatis.selectList("review.info_select",rdto);
	}
	
	//계약서작성 보기
	public ReviewDTO contrast_select_one(int id) {
		return mybatis.selectOne("review.contrast_select_one", id);
	}
	
	//차량출고 보기
	public ReviewDTO car_select_one(int id) {
		return mybatis.selectOne("review.car_select_one", id);
	}
	
	//장기렌트 & 리스 정보 보기
	public ReviewDTO info_select_one(int id) {
		return mybatis.selectOne("review.info_select_one", id);
	}
		
	// 보기
	public ReviewDTO select_one(int id) {
		return mybatis.selectOne("review.select_one", id);
	}
	
	
	// 수정
	public int r_update(ReviewDTO rdto) {
		return mybatis.update("review.r_update", rdto);
	}
	
	
	// 삭제
	public int r_delete(int id) {
		return mybatis.delete("review.r_delete", id);
	}
	
}
