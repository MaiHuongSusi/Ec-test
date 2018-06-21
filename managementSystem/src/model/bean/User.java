package model.bean;

import java.sql.Date;
import java.util.List;

public class User {
	private int userId;
	private String username;
	private String password;
	private String fullname;
	private Date dateOfBirth;
	private String email;
	private Date createdDate;
	private int roleId;
	private int gender;
	private String address;
	private String phone;
	private String notificationId;
	private String avatar;
	private List<Ability> abilities;
	
	public List<Ability> getAbilities() {
		return abilities;
	}
	public void setAbilities(List<Ability> abilities) {
		this.abilities = abilities;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getNotificationId() {
		return notificationId;
	}
	public void setNotificationId(String notificationId) {
		this.notificationId = notificationId;
	}
	public User() {
		super();
	}
	
	
	
	public User(int userId, String username, String password, String fullname, Date dateOfBirth, String email,
			Date createdDate, int roleId, int gender, String address, String phone, String notificationId,
			String avatar) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.createdDate = createdDate;
		this.roleId = roleId;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.notificationId = notificationId;
		this.avatar = avatar;
	}
	@Override
	public String toString(){
		return "UserId: " + userId+ "\n"+
				"User Name: " + username+ "\n"+
				"Full Name: " + fullname+ "\n"+
				"Date of birth: " +  dateOfBirth+ "\n"+
				"Email: " + email+ "\n"+
				"Role Id: " +roleId+ "\n"+
				"Gender: " + gender+ "\n"+
				"Address: " + address+ "\n"+
				"Phone: " + phone+ "\n";
	}
	
	
	
}
