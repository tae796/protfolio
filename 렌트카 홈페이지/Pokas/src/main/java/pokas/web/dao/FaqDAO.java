package pokas.web.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import pokas.web.dto.FaqDTO;


@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	public int faq_insert(FaqDTO c_dto) throws Exception {
		return mybatis.insert("faq.faq_insert", c_dto);
	}
	
	public FaqDTO faq_select_one(int id) throws Exception {
		return mybatis.selectOne("faq.faq_select_one",id);
	}
	
	
	public List<FaqDTO> faq_select_all() throws Exception {
		return mybatis.selectList("faq.faq_select_all");
	}
	
	public int faq_update(FaqDTO c_dto) throws Exception {
		return mybatis.update("faq.faq_update", c_dto);
	}
	
	public int faq_delete(int id) throws Exception {
		return mybatis.delete("faq.faq_delete",id);
	}
	
}
