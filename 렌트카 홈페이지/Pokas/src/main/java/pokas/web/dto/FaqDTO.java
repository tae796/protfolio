package pokas.web.dto;


public class FaqDTO {
	
	private int id;
	private String title;
	private String text;
	
	public FaqDTO() {}
	
	public FaqDTO(int id,String text, String title) {
		super();
		this.id = id;
		this.title = title;
		this.text = text;

	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public String gettext() {
		return text;
	}

	public void settext(String text) {
		this.text = text;
	}


	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}



	
}
