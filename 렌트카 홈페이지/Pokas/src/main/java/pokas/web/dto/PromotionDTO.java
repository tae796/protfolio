package pokas.web.dto;

import java.sql.Date;

public class PromotionDTO {
	
	private int id;
	private int product_type;
	private String name;
	private String grade;
	private String oil_type;
	private int cc;
	private String oil_rate;
	private int agreement_dist;
	private String guarantee;
	private String option;
	private int months;
	private int price;
	private Date start_ddt;
	private Date end_ddt;
	private String image;

	public PromotionDTO() {}
	
	public PromotionDTO(int id, int product_type, String name, String grade,String oil_type,int cc,String oil_rate,int agreement_dist,String guarantee,String option,int months, int price, Date start_ddt, Date end_ddt, String image) {
		super();
		this.id = id;
		this.product_type = product_type;
		this.name = name;
		this.grade = grade;
		this.oil_type = oil_type;
		this.cc = cc;
		this.oil_rate = oil_rate;
		this.agreement_dist = agreement_dist;
		this.guarantee = guarantee;
		this.option = option;
		this.months = months;
		this.price = price;
		this.start_ddt = start_ddt;
		this.end_ddt = end_ddt;
		this.image = image;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public int getproduct_type() {
		return product_type;
	}

	public void setproduct_type(int product_type) {
		this.product_type = product_type;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getgrade() {
		return grade;
	}

	public void setgrade(String grade) {
		this.grade = grade;
	}




	public String getoil_type() {
		return oil_type;
	}

	public void setoil_type(String oil_type) {
		this.oil_type = oil_type;
	}

	public int getcc() {
		return cc;
	}

	public void setcc(int cc) {
		this.cc = cc;
	}

	public String getoil_rate() {
		return oil_rate;
	}

	public void setoil_rate(String oil_rate) {
		this.oil_rate = oil_rate;
	}

	public int getagreement_dist() {
		return agreement_dist;
	}

	public void setagreement_dist(int agreement_dist) {
		this.agreement_dist = agreement_dist;
	}

	public String getguarantee() {
		return guarantee;
	}

	public void setguarantee(String guarantee) {
		this.guarantee = guarantee;
	}

	public String getoption() {
		return option;
	}

	public void setoption(String option) {
		this.option = option;
	}

	public int getmonths() {
		return months;
	}

	public void setmonths(int months) {
		this.months = months;
	}

	public int getprice() {
		return price;
	}

	public void setprice(int price) {
		this.price = price;
	}

	public String getimage() {
		return image;
	}

	public void setimage(String image) {
		this.image = image;
	}


	public Date getend_ddt() {
		return end_ddt;
	}

	public void setend_ddt(Date end_ddt) {
		this.end_ddt = end_ddt;
	}

	public Date getstart_ddt() {
		return start_ddt;
	}

	public void setstart_ddt(Date start_ddt) {
		this.start_ddt = start_ddt;
	}
	
}
