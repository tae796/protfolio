package pokas.web.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pokas.web.dto.CarDTO;
import pokas.web.dto.PromotionDTO;

@Repository
public class CarDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//李� �옉�꽦
	public int c_insert_rent(CarDTO c_dto) throws Exception {
		return mybatis.insert("car.c_insert_rent", c_dto);
	}
	
	public int c_insert_auto(CarDTO c_dto) throws Exception {
		return mybatis.insert("car.c_insert_auto", c_dto);
	}
	
	public CarDTO c_select_one(int id) throws Exception {
		return mybatis.selectOne("car.c_select_one",id);
	}
	
	//�쟾泥� 蹂닿린
	public List<CarDTO> c_list_rent(Map<String, Integer> cdto) throws Exception {
		return mybatis.selectList("car.c_rent_all",cdto);
	}
	public List<CarDTO> c_list_auto(Map<String, Integer> cdto) throws Exception {
		return mybatis.selectList("car.c_auto_all",cdto);
	}
	

	public int selectCount1() {
		return mybatis.selectOne("car.c_selectcount1");
	}
	public int selectCount2() {
		return mybatis.selectOne("car.c_selectcount2");
	}
	
	

	public List<CarDTO> c_search_rent(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent",cdto);
	}
	
	public List<CarDTO> c_search_rent_by_size(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_by_size",cdto);
	}
	
	public List<CarDTO> c_search_rent_by_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_by_oil",cdto);
	}
	
	public List<CarDTO> c_search_rent_size(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_size",cdto);
	}
	
	public List<CarDTO> c_search_rent_brand_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_brand_oil",cdto);
	}
	
	public List<CarDTO> c_search_rent_size_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_size_oil",cdto);
	}
	
	public List<CarDTO> c_search_rent_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_rent_oil",cdto);
	}

	
	public List<CarDTO> c_search_auto(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto",cdto);
	}
	
	public List<CarDTO> c_search_auto_by_size(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_by_size",cdto);
	}
	
	public List<CarDTO> c_search_auto_by_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_by_oil",cdto);
	}
	
	public List<CarDTO> c_search_auto_size(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_size",cdto);
	}
	
	public List<CarDTO> c_search_auto_brand_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_brand_oil",cdto);
	}
	
	public List<CarDTO> c_search_auto_size_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_size_oil",cdto);
	}
	
	public List<CarDTO> c_search_auto_oil(CarDTO cdto) throws Exception {
		return mybatis.selectList("car.c_search_auto_oil",cdto);
	}
	
	public int c_update(CarDTO cdto) {
		return mybatis.update("car.c_update", cdto);
	}

	//李� �궘�젣
	public int c_delete(int id) throws Exception {
		return mybatis.delete("car.c_delete", id);
	}
	
	
	


}
