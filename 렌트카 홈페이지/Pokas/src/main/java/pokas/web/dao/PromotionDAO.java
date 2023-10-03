package pokas.web.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import pokas.web.dto.PromotionDTO;
import pokas.web.dto.ReviewDTO;


@Repository
public class PromotionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	//등록
	public int prom_insert(PromotionDTO pdto) {
		return mybatis.insert("promotion.prom_insert", pdto);
	}

	public int selectCount() {
		return mybatis.selectOne("promotion.c_selectcount");
	}
	
	public PromotionDTO prom_one(int id) {
		return mybatis.selectOne("promotion.prom_one",id);
	}
	
	//목록 출력
	public List<PromotionDTO> prom_all(Map<String, Integer> pdto) {
		return mybatis.selectList("promotion.prom_all",pdto);
	}
	
	public List<PromotionDTO> prom_all1() {
		return mybatis.selectList("promotion.prom_all1");
	}
	
	// 수정
		public int prom_update(PromotionDTO rdto) {
			return mybatis.update("promotion.prom_update", rdto);
		}
	
	
	//삭제
	public int prom_delete(int id) {
		return mybatis.delete("promotion.prom_delete", id);
	}
}
