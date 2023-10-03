package pokas.web.dto;

public class CarDTO {
	
	private int id;
	private int type;
	private int price;
	private String initcost;
	private String name;
	private String brand;
	private String size;
	private String oil_rate;
	private String oil_type;
	private String image;

	public CarDTO() {}
	
	public CarDTO(int id,int type,int price, String initcost, String name, String brand, String size,String oil_rate,String oil_type, String image) {
		super();
		this.id = id;
		this.type = type;
		this.price = price;
		this.initcost = initcost;
		this.name = name;
		this.brand = brand;
		this.size = size;
		this.oil_rate = oil_rate;
		this.oil_type = oil_type;
		this.image = image;
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
	
	public int getprice() {
		return price;
	}
	public void setprice(int price) {
		this.price = price;
	}
	
	public String getinitcost() {
		return initcost;
	}
	public void setinitcost(String initcost) {
		this.initcost = initcost;
	}

	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	
	public String getbrand() {
		return brand;
	}
	public void setbrand(String brand) {
		this.brand = brand;
	}
	
	public String getsize() {
		return size;
	}
	public void setsize(String size) {
		this.size = size;
	}

	public String getoil_rate() {
		return oil_rate;
	}
	public void setoil_rate(String oil_rate) {
		this.oil_rate = oil_rate;
	}

	public String getoil_type() {
		return oil_type;
	}
	public void setoil_type(String oil_type) {
		this.oil_type = oil_type;
	}

	public String getimage() {
		return image;
	}
	public void setimage(String image) {
		this.image = image;
	}
	
}
