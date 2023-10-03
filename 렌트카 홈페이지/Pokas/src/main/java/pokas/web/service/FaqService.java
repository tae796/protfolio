package pokas.web.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.FaqDAO;
import pokas.web.dto.FaqDTO;


@Service
public class FaqService {

	@Autowired
	private FaqDAO c_dao;

	
	public int faq_insert(FaqDTO cdto) throws Exception {
		return c_dao.faq_insert(cdto);
	}
	
	public FaqDTO faq_select_one(int id) throws Exception {
		return c_dao.faq_select_one(id);
	}

	public List<FaqDTO> faq_select_all() throws Exception {
		return c_dao.faq_select_all();
	}
	
	public int faq_update(FaqDTO cdto) throws Exception {
		return c_dao.faq_update(cdto);
	}
	
	public int faq_delete(int id) throws Exception {
		return c_dao.faq_delete(id);
	}
	
}
