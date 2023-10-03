package pokas.web.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pokas.web.dao.AdminDAO;
import pokas.web.dto.AdminDTO;
import pokas.web.dto.HotdealDTO;
import pokas.web.staticInfo.Configuration;

@Service
public class AdminService {

	@Autowired
	private AdminDAO c_dao;
	
	public AdminDTO admin_login(AdminDTO cdto) throws Exception {
		return c_dao.admin_login(cdto);
	}
	public String get_center(String cdto) throws Exception {
		return c_dao.get_center(cdto);
	}
	
	public AdminDTO get_one(int id) throws Exception {
		return c_dao.get_one(id);
	}
	
	public String get_team(String cdto) throws Exception {
		return c_dao.get_team(cdto);
	}
	
	public String get_name(String cdto) throws Exception {
		return c_dao.get_name(cdto);
	}
	
	public int admin_insert(AdminDTO cdto) throws Exception {
		return c_dao.admin_insert(cdto);
	}

	public List<AdminDTO> get_admin_list() throws Exception {
		return c_dao.get_admin_list();
	}
	
	public int admin_update(AdminDTO cdto) throws Exception {
		return c_dao.admin_update(cdto);
	}
	
	public int admin_delete(int id) throws Exception {
		return c_dao.admin_delete(id);
	}
	
}
