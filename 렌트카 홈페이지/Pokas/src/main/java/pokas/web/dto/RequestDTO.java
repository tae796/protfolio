package pokas.web.dto;

import java.sql.Date;

public class RequestDTO {
	
	private int id;
	private int type;
	private String brand;
	private String car_type;
	private String region;
	private String phone;
	private String email;
	private String detail;
	private int months;
	private String date;
	private String status;
	private String name;
	private String center;
	private String team;
	private String member;
	private String url;
	
	public RequestDTO() {}
	
	public RequestDTO(int id,int type, String brand, String car_type, String region, String phone,
			String email, String detail,int months, String date, String status,String name,String center, String team, String member,String url) {
		super();
		this.id = id;
		this.type = type;
		this.brand = brand;
		this.car_type = car_type;
		this.region = region;
		this.phone = phone;
		this.email = email;
		this.detail = detail;
		this.months = months;
		this.date = date;
		this.status = status;
		this.name = name;
		this.center = center;
		this.team= team;
		this.member = member;
		this.url = url;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public int gettype() {
		return type;
	}

	public void settype(int type) {
		this.type = type;
	}


	public String getbrand() {
		return brand;
	}

	public void setbrand(String brand) {
		this.brand = brand;
	}

	public String getcar_type() {
		return car_type;
	}

	public void setcar_type(String car_type) {
		this.car_type = car_type;
	}

	public String getregion() {
		return region;
	}

	public void setregion(String region) {
		this.region = region;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getdetail() {
		return detail;
	}

	public void setdetail(String detail) {
		this.detail = detail;
	}

	public String getphone() {
		return phone;
	}

	public void setphone(String phone) {
		this.phone = phone;
	}

	public int getmonths() {
		return months;
	}

	public void setmonths(int months) {
		this.months = months;
	}
	
	public String getdate() {
		return date;
	}

	public void setdate(String date) {
		this.date = date;
	}

	public String getstatus() {
		return status;
	}

	public void setstatus(String status) {
		this.status = status;
	}
	
	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}
	
	public String getcenter() {
		return center;
	}

	public void setcenter(String center) {
		this.center = center;
	}
	
	public String getteam() {
		return team;
	}

	public void setteam(String team) {
		this.team = team;
	}
	
	public String getmember() {
		return member;
	}

	public void setmember(String member) {
		this.member =member;
	}
	
	public String geturl() {
		return url;
	}

	public void seturl(String url) {
		this.url =url;
	}
	
}
