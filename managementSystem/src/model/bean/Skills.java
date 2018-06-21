package model.bean;

public class Skills {
	private int skillId;
	private String name;
	
	public int getSkillId() {
		return skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Skills(int skillId, String name) {
		super();
		this.skillId = skillId;
		this.name = name;
	}
	public Skills() {
		super();
	}

}
