package pokas.web.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.AdminDTO;
import pokas.web.dto.CarDTO;
import pokas.web.dto.HotdealDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	public AdminDTO admin_login(AdminDTO c_dto) throws Exception {
		return mybatis.selectOne("admin.admin_login", c_dto);
	}
	
	public String get_center(String user_id) throws Exception {
		return mybatis.selectOne("admin.get_center",user_id);
	}

	public AdminDTO get_one(int id) throws Exception {
		return mybatis.selectOne("admin.get_one",id);
	}
	
	public String get_team(String user_id) throws Exception {
		return mybatis.selectOne("admin.get_team",user_id);
	}
	
	public String get_name(String user_id) throws Exception {
		return mybatis.selectOne("admin.get_name",user_id);
	}


	public int admin_insert(AdminDTO c_dto) throws Exception {
		return mybatis.insert("admin.admin_insert", c_dto);
	}
	
	public List<AdminDTO> get_admin_list() throws Exception {
		return mybatis.selectList("admin.get_admin_list");
	}
	
	public int admin_update(AdminDTO c_dto) throws Exception {
		return mybatis.update("admin.admin_update", c_dto);
	}
	
	public int admin_delete(int id) throws Exception {
		return mybatis.delete("admin.admin_delete",id);
	}
	
}
