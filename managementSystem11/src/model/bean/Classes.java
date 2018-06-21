package model.bean;

import java.sql.Date;

public class Classes {
	private int classId;;
	private int courseId;
	private int trainerId;
	private Date createAt;
	private String timeOfDate;
	private String dateOfWeek;
	private int countLession;
	private int roomId;
	
	
	public int getClassId() {
		return classId;
	}


	public void setClassId(int classId) {
		this.classId = classId;
	}


	public int getCourseId() {
		return courseId;
	}


	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}


	public int getTrainerId() {
		return trainerId;
	}


	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}


	public Date getCreateAt() {
		return createAt;
	}


	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}


	public String getTimeOfDate() {
		return timeOfDate;
	}


	public void setTimeOfDate(String timeOfDate) {
		this.timeOfDate = timeOfDate;
	}


	public String getDateOfWeek() {
		return dateOfWeek;
	}


	public void setDateOfWeek(String dateOfWeek) {
		this.dateOfWeek = dateOfWeek;
	}


	public int getCountLession() {
		return countLession;
	}


	public void setCountLession(int countLession) {
		this.countLession = countLession;
	}


	public int getRoomId() {
		return roomId;
	}


	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}


	public Classes(int classId, int courseId, int trainerId, Date createAt, String timeOfDate, String dateOfWeek,
			int countLession, int roomId) {
		super();
		this.classId = classId;
		this.courseId = courseId;
		this.trainerId = trainerId;
		this.createAt = createAt;
		this.timeOfDate = timeOfDate;
		this.dateOfWeek = dateOfWeek;
		this.countLession = countLession;
		this.roomId = roomId;
	}


	public Classes() {
		super();
		// TODO Auto-generated constructor stub
	}
}
