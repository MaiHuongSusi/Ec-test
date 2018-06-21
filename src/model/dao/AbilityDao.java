package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import libralies.ConnectDBLibrary;
import model.bean.Ability;
import model.bean.User;

public class AbilityDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public void addTrainerAbility(Ability ability){
		conn = ConnectDBLibrary.getConnection();
		try{
			String sql= "insert into ability values(0,?,?,?,?)";
			
			pst= conn.prepareStatement(sql);
			pst.setInt(1, ability.getUserId());
			pst.setInt(2, ability.getSkillId());
			pst.setInt(3, ability.getExperience());
			pst.setInt(4, ability.getCourseId());
			
			pst.executeUpdate();
		}
		catch(SQLException e){
			System.out.println(e);
		}
	}
	
	public void editTrainerAbility(Ability ability){
		conn= ConnectDBLibrary.getConnection();
		try{
			String sql= "update ability set skill_id=? and experience=? and course_id=?"
					+ "where user_id =? ;";
			pst=conn.prepareStatement(sql);
			
			pst.setInt(1, ability.getSkillId());
			pst.setInt(2, ability.getExperience());
			pst.setInt(3, ability.getCourseId());
			pst.setInt(4, ability.getUserId());
			
			pst.executeUpdate();
		}
		catch(SQLException e){
			System.out.println(e);
		}
	}
	
	public List<Ability> getAbilityByUserID(int userId){
		conn = ConnectDBLibrary.getConnection();
		List<Ability> abilities= new ArrayList<>();
		try{
			String sql= "select * from ability where user_id=?";
			pst=conn.prepareStatement(sql);
			
			pst.setInt(1, userId);
			rs= pst.executeQuery();
			while(rs.next()){
				Ability ability= new Ability(rs.getInt("ability_id"), rs.getInt("user_id"), 
						rs.getInt("skill_id"), rs.getInt("experience"), rs.getInt("course_id"));
				abilities.add(ability);
			}
			
		}catch(SQLException e){
			System.out.println(e);
		}
		return abilities;
		
	}
	
}
