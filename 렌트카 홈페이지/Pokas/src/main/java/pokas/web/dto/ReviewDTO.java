package pokas.web.dto;

import java.sql.Date;

public class ReviewDTO {
	
	private int id;
	private int type;
	private String title;
	private String writer;
	private String text;
	private String image;
	private Date date;
	private String center;
	private String team;
	
	public ReviewDTO() {}
	
	public ReviewDTO(int id,int type, String title, String writer, String text, String image,
			String email, String detail,int months,Date date, String center, String team) {
		super();
		this.id = id;
		this.type = type;
		this.title = title;
		this.writer = writer;
		this.text = text;
		this.image = image;
		this.date = date;
		this.center = center;
		this.team = team;

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


	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}

	public String getwriter() {
		return writer;
	}

	public void setwriter(String writer) {
		this.writer = writer;
	}

	public String gettext() {
		return text;
	}

	public void settext(String text) {
		this.text = text;
	}

	public String getimage() {
		return image;
	}

	public void setimage(String image) {
		this.image = image;
	}

	public Date getdate() {
		return date;
	}

	public void setdate(Date date) {
		this.date = date;
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



	
}
