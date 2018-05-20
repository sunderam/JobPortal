package dao;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.EducationalDetails;
import pojo.PersonalDetails;
import pojo.ProfessionalDetails;
import pojo.Profile;

public class ProfileDao extends Connection{
	private int currentUserId = 0;
	public ProfileDao() throws Exception{
        
	       conn=dao.DatabaseConnection.getInstance().dataConnection();
	       
	        if (conn!= null) {
	            System.out.println("Connection success in LoginDao");
	        } else {
	            System.out.println("Connetion Failed in LoginDao");
	        }
	    }
	
	public boolean addPersonalDetails(PersonalDetails per,String user){
		
			ScoreDao score = new ScoreDao();
			currentUserId = score.getCurrentUserId(user);
		try {
			stmt = conn.prepareStatement("update personalDetails set fullName=?,dateOfBirth=?,gender=?,address=?,currentCity=? where regid = ?");
			stmt.setString(1, per.getFullName());
			stmt.setString(2, per.getDateOfBirth());
			stmt.setString(3, per.getGender());
			stmt.setString(4, per.getAddress());
			stmt.setString(5, per.getCurrentCity());
			stmt.setInt(6, currentUserId);
			int i = stmt.executeUpdate();
			if(i>0)
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean addEducationalDetails(EducationalDetails edu,String user){
		ScoreDao score = new ScoreDao();
		currentUserId = score.getCurrentUserId(user);
		try {
			stmt = conn.prepareStatement("update educationDetails set sscMarks=?,sscYearOfPassing=?,hscMarks=?,hscYearOfPassing=?,degree=?,degreeYearOfPassing=?,degreeAggregate=?,collegeName=?,branch=?,course=? where regid = ?");
			stmt.setString(1, edu.getSscPercentage());
			stmt.setString(2, edu.getSscYearOfPassing());
			stmt.setString(3, edu.getHscPercentage());
			stmt.setString(4, edu.getHscYearOfPassing());
			stmt.setString(5, edu.getDegree());
			stmt.setString(6, edu.getDegreeYearOfPassing());
			stmt.setString(7, edu.getDegreeAggregate());
			stmt.setString(8, edu.getCollegeName());
			stmt.setString(9, edu.getBranch());
			stmt.setString(10, edu.getCourse());
			stmt.setInt(11, currentUserId);
			int k = stmt.executeUpdate();
			if(k>0)
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean addProfessionalDetails(ProfessionalDetails pro,String user){
		ScoreDao score = new ScoreDao();
		currentUserId = score.getCurrentUserId(user);
		try {
			System.out.println("personal Dao");
			stmt = conn.prepareStatement("update professionalDetails set experiance=?,jobTitle=?,currentCTC=? where regid=?");
			stmt.setString(1, pro.getExperiance());
			stmt.setString(2, pro.getJobTitle());
			stmt.setString(3, pro.getCurrentCTC());
			stmt.setInt(4, currentUserId);
			int j = stmt.executeUpdate();
			if(j>0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	public List<Profile> getProfile(){
		List<Profile> profileList = new ArrayList<Profile>();
		Profile profile = null;
		String query = "SELECT p.fullName,p.dateOfBirth,p.gender,p.address,p.currentCity,e.sscMarks,e.sscYearOfPassing,e.hscMarks,e.hscYearOfPassing,e.degree,e.degreeYearOfPassing,e.degreeAggregate,e.collegeName,e.branch,e.course,pr.experiance,pr.jobTitle,pr.currentCTC "+
				"FROM personaldetails as p "+
				"LEFT JOIN educationdetails e "+
				"ON p.regid = e.regid "+
				"LEFT JOIN professionaldetails AS pr "+
				"ON p.regid = pr.regid";
		try {
			stmt = conn.prepareStatement(query);
			rs = stmt.executeQuery();
			while(rs.next()){
				profile = new Profile();
				profile.setFullName(rs.getString("fullName"));
				profile.setDateOfBirth(rs.getString("dateOfBirth"));
				profile.setGender(rs.getString("gender"));
				profile.setAddress(rs.getString("address"));
				profile.setCurrentCity(rs.getString("currentCity"));
				profile.setSscYearOfPassing(rs.getString("hscMarks"));
				profile.setSscYearOfPassing(rs.getString("hscYearOfPassing"));
				profile.setHscPercentage(rs.getString("hscMarks"));
				profile.setHscYearOfPassing(rs.getString("hscYearOfPassing"));
				profile.setDegree(rs.getString("degree"));
				profile.setDegreeYearOfPassing(rs.getString("degreeYearOfPassing"));
				profile.setDegreeAggregate(rs.getString("degreeAggregate"));
				profile.setCollegeName(rs.getString("collegeName"));
				profile.setBranch(rs.getString("branch"));
				profile.setCourse(rs.getString("course"));
				profile.setExperiance(rs.getString("experiance"));
				profile.setJobTitle(rs.getString("jobTitle"));
				profile.setCurrentCTC(rs.getString("currentCTC"));
				profileList.add(profile);
			}
			return profileList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	 

}
