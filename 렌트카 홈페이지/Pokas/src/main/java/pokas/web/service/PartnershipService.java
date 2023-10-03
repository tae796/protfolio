package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pokas.web.dao.PartnershipDAO;
import pokas.web.dto.PartnershipDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class PartnershipService {

	@Autowired
	private PartnershipDAO rqdao;
	
	//매거진 본문 등록
	public int pts_insert(PartnershipDTO rqdto) throws Exception {
		
		return rqdao.pts_insert(rqdto);
	}
	
	//파일 가져오기
	public List<PartnershipDTO> pts_all() throws Exception {
		
		return rqdao.pts_all();
	}


	public int pts_delete(int id) throws Exception {
		return rqdao.pts_delete(id);
	}
	
}
