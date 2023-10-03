package pokas.web.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.HotdealDTO;
import pokas.web.dto.PromotionDTO;

@Repository
public class HotdealDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 업로드
	public int hot_insert(HotdealDTO hdto) throws Exception {
		return mybatis.insert("hotdeal.hot_insert",hdto);
	}
	
	public int selectCount() {
		return mybatis.selectOne("hotdeal.c_selectcount");
	}

	// 리스트 전체
	public  List<HotdealDTO> hot_all(Map<String, Integer> number) throws Exception {
		return mybatis.selectList("hotdeal.hot_all",number);
	}
	public  List<HotdealDTO> hot_all1() throws Exception {
		return mybatis.selectList("hotdeal.hot_all1");
	}
	
	
	public HotdealDTO hot_one(int id) {
		return mybatis.selectOne("hotdeal.hot_one",id);
	}
	
	public int hot_update(HotdealDTO rdto) {
		return mybatis.update("hotdeal.hot_update", rdto);
	}
	
	// 삭제
	public int hot_delete(int id) {
		return mybatis.delete("hotdeal.hot_delete",id);
	}
	

}
