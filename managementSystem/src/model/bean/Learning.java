package model.bean;

public class Learning {
	private int id;
	private int classId;
	private int userId;
	

	
	public Learning(int id, int classId, int userId) {
		super();
		this.id = id;
		this.classId = classId;
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Learning() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
