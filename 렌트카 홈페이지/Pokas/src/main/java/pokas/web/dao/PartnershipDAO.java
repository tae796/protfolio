package pokas.web.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.PartnershipDTO;

@Repository
public class PartnershipDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	//등록
	public int pts_insert(PartnershipDTO ps_dto) {
		return mybatis.insert("partnership.pts_insert", ps_dto);
	}
	
	//목록 출력
	public List<PartnershipDTO> pts_all() {
		return mybatis.selectList("partnership.pts_all");
	}
	
	//삭제
	public int pts_delete(int id) {
		return mybatis.delete("partnership.pts_delete", id);
	}

}

