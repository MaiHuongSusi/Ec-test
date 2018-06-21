package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import libralies.ConnectDBLibrary;
import model.bean.Ability;
import model.bean.Skills;
import model.bean.User;

public class UserDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public List<User> getUsersByRoleId(int roleId){
		conn= ConnectDBLibrary.getConnection();
		List<User> users = new ArrayList<>();
		List<Ability> abilities= new ArrayList<>();
		try{
			String sql= "select u.*, s.name, a.* from users u "
					+ "join ability a on u.user_id = a.user_id"
					+ " join skills s on s.skill_id= a.skill_id "
					+ "where u.role_id = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, roleId);
			rs = pst.executeQuery();
			while(rs.next()){
				int userId= rs.getInt("user_id");
				String userName= rs.getString("username");
				String password= rs.getString("password");
				String fullName= rs.getString("fullname");
				Date dateOfBirth=rs.getDate("date_of_birth");
				Date createdAt=rs.getDate("created_at");
				String email= rs.getString("email");
				int gender= rs.getInt("gender");
				String address= rs.getString("address");
				String phone= rs.getString("phone");
				String notificationId= rs.getString("notification_id");
				String avatar= rs.getString("image");
				
				if(roleId ==2 ){
					User user= new User(userId, userName, password, fullName,
							dateOfBirth, email, createdAt, roleId, gender, address, 
							phone, notificationId, avatar);
					Ability ability= new Ability();
					abilities.add(ability);
					user.setAbilities(abilities);
					users.add(user);
				}
				else{
					int abilityId= rs.getInt("ability_id");
					int skillId= rs.getInt("skill_id");
					int experience= rs.getInt("experience");
					int courseId= rs.getInt("course_id");
					
					User user= new User(userId, userName, password, fullName,
							dateOfBirth, email, createdAt, roleId, gender, address, 
							phone, notificationId, avatar);
					Ability ability= new Ability(abilityId, userId, skillId, experience, courseId);
					abilities.add(ability);
					user.setAbilities(abilities);
					users.add(user);
				}
			}
			
		}catch(SQLException e){
			System.out.println(e);
		}
		return users;
	}
	
	public User getUserByID(int userId){
		conn= ConnectDBLibrary.getConnection();
		User user= new User();
		List<Ability> abilities= new ArrayList<>();
		try{
			String sql= "select u.*, s.name, a.* from users u "
					+ "join ability a on u.user_id = a.user_id"
					+ " join skills s on s.skill_id= a.skill_id "
					+ "where u.user_id=?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, userId);
			rs = pst.executeQuery();
			while(rs.next()){
				String userName= rs.getString("username");
				String password= rs.getString("password");
				String fullName= rs.getString("fullname");
				Date dateOfBirth=rs.getDate("date_of_birth");
				Date createdAt=rs.getDate("created_at");
				int roleId= rs.getInt("role_id");
				String email= rs.getString("email");
				int gender= rs.getInt("gender");
				String address= rs.getString("address");
				String phone= rs.getString("phone");
				String notificationId= rs.getString("notification_id");
				String avatar= rs.getString("image");
				
				if(roleId !=2 ){
					int abilityId= rs.getInt("ability_id");
					int skillId= rs.getInt("skill_id");
					int experience= rs.getInt("experience");
					int courseId= rs.getInt("course_id");
					user= new User(userId, userName, password, fullName,
							dateOfBirth, email, createdAt, roleId, gender, address, 
							phone, notificationId, avatar);
					Ability ability= new Ability(abilityId, userId, skillId, experience, courseId);
					abilities.add(ability);
					user.setAbilities(abilities);
				}
				else{
					user= new User(userId, userName, password, fullName,
							dateOfBirth, email, createdAt, roleId, gender, address, 
							phone, notificationId, avatar);
				}

			}
			
		}catch(SQLException e){
			System.out.println(e);
		}
		return user;
	}
	
	public void addTrainer(User trainer){
		conn = ConnectDBLibrary.getConnection();
		try{
			String sql= "insert into users values(0,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, trainer.getUsername());
			pst.setString(2, trainer.getPassword());
			pst.setString(3, trainer.getFullname());
			pst.setDate(4, trainer.getDateOfBirth());
			pst.setDate(5, trainer.getCreatedDate());
			pst.setString(6,  trainer.getEmail());
			pst.setInt(7, trainer.getGender());
			pst.setString(8, trainer.getAddress());
			pst.setString(9,trainer.getPhone());
			pst.setInt(10, trainer.getRoleId());
			pst.setString(11, trainer.getNotificationId());
			pst.setString(12, trainer.getAvatar());
			
			pst.executeUpdate();
		}
		catch(SQLException e){
			System.out.println(e);
		}
	}
	
	public void editTrainer(User trainer){
		conn= ConnectDBLibrary.getConnection();
		try{
			String sql= "update users set fullname=? and date_of_birth=?"
					+ " and address=? and phone=? and avata=?"
					+ "where user_id =? ;";
			pst=conn.prepareStatement(sql);
			pst.setString(1, trainer.getFullname());
			pst.setDate(2, trainer.getDateOfBirth());
			pst.setString(3, trainer.getAddress());
			pst.setString(4, trainer.getPhone());
			pst.setString(5, trainer.getAvatar());
			pst.setInt(6, trainer.getRoleId());
			
			pst.executeUpdate();
		}
		catch(SQLException e){
			System.out.println(e);
		}
	}
	
	public int getLastTrainerId(){
		conn = ConnectDBLibrary.getConnection();
		int lastTrainerId = 0;
		try{
			String sql="select max(user_id) from users where role_id = 1";
			pst=conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				lastTrainerId=rs.getInt("max(user_id)"); 
			}
		}
		catch(SQLException e){
			System.out.println(e);
		}
		return lastTrainerId;
	}

	
	public List<User> getItems(){
		return null;
	}
	
	public User getItemById(int id) {
		return null;
	}
	
	public User getItemByUserNameAndPassword(String username, String password) {
		return null;
	}
	
	public int addItem(User user) {
		return 0;
	}
	
	public int editItem(User user) {
		return 0;
	}
	
	public int deleteItem(int id) {
		return 0;
	}
	
	public int addNewTrainee(User user) {
		int kq = 0;
		conn = ConnectDBLibrary.getConnection();
		
		String sql = "insert into users(username, password, fullname, date_of_birth, created_at, email, gender, address, phone, role_id, notification_id, image) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getFullname());
			pst.setDate(4, user.getDateOfBirth());
			pst.setDate(5, user.getCreatedDate());
			pst.setString(6, user.getEmail());
			pst.setInt(7, user.getGender());
			pst.setString(8, user.getAddress());
			pst.setString(9, user.getPhone());
			pst.setInt(10, user.getRoleId());
			pst.setString(11, user.getNotificationId());
			pst.setString(12, user.getAvatar());
			
			kq = pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectDBLibrary.close(rs, pst, conn);
		}
		
		return kq;
		
	}

}
