package model.bean;

public class Courses {
	private int courseId;
	private int majorId;
	private String name;
	private int duration;
	private int status;
	
	// default is keyword, so i change default by kind_of_course
	// please check it
	private int kind_of_course;

	public Courses(int courseId, int majorId, String name, int duration, int status, int kind_of_course) {
		super();
		this.courseId = courseId;
		this.majorId = majorId;
		this.name = name;
		this.duration = duration;
		this.status = status;
		this.kind_of_course = kind_of_course;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

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

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getKind_of_course() {
		return kind_of_course;
	}

	public void setKind_of_course(int kind_of_course) {
		this.kind_of_course = kind_of_course;
	}

	public Courses() {
		super();
		// TODO Auto-generated constructor stub
	}
}
