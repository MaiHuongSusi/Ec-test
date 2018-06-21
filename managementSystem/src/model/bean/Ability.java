package model.bean;

public class Ability {
	private int id;
	private int userId;
	private int skillId;
	private int experience;
	private int courseId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSkillId() {
		return skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public Ability(int id, int userId, int skillId, int experience, int courseId) {
		super();
		this.id = id;
		this.userId = userId;
		this.skillId = skillId;
		this.experience = experience;
		this.courseId = courseId;
	}
	public Ability() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
