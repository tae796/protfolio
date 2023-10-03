package pokas.web.dto;

import java.sql.Date;

public class PartnershipDTO {
	
	private int id;
	private String phone;
	private String email;
	private String title;
	private String detail;
	private String date;
	
	public PartnershipDTO() {}
	
	public PartnershipDTO(int id,String phone,
			String email,String title, String detail,String date) {
		super();
		this.id = id;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.detail = detail;
		this.date = date;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
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
	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}
	
	public String getdate() {
		return date;
	}

	public void setdate(String date) {
		this.date = date;
	}
	
}
