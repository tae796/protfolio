package pokas.web.dto;

public class AdminDTO {
	
	private int id;
	private String userid;
	private String password;
	private String grade;
	private String center;
	private String team;
	private String name;
	private String image;
	private String del_yn;

	public AdminDTO() {}
	
	public AdminDTO(int id,String userid,String password, String grade, String center, String team, String image, String del_yn, String name) {
		super();
		this.id = id;
		this.userid = userid;
		this.password = password;
		this.grade = grade;
		this.center = center;
		this.team = team;
		this.image = image;
		this.del_yn = del_yn;
		this.name = name;

	}
	
	public int getid() {
		return id;
	}
	public void setid(int id) {
		this.id = id;
	}
	
	public String getuserid() {
		return userid;
	}
	public void setuserid(String userid) {
		this.userid = userid;
	}
	
	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
	}
	
	public String getgrade() {
		return grade;
	}
	public void setgrade(String grade) {
		this.grade = grade;
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
	public String getimage() {
		return image;
	}
	public void setimage(String image) {
		this.image = image;
	}
	public String getdel_yn() {
		return del_yn;
	}
	public void setdel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	
}
