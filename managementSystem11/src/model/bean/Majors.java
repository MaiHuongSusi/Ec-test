package model.bean;

public class Majors {
	private int majorId;
	private String name;
	
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Majors() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Majors(int majorId, String name) {
		super();
		this.majorId = majorId;
		this.name = name;
	}
	
	
	

}
