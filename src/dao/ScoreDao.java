package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.Score;

public class ScoreDao extends Connection {
	
	
	 public ScoreDao(){
	        
	       try {
			conn=dao.DatabaseConnection.getInstance().dataConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       
	        if (conn!= null) {
	            System.out.println("Connection success in LoginDao");
	        } else {
	            System.out.println("Connetion Failed in LoginDao");
	        }
	    }
	
	public int getCurrentUserId(String username){
		
		try {
			stmt = conn.prepareStatement("select regid from register where email = ?");
			stmt.setString(1, username);
			rs = stmt.executeQuery();
			while(rs.next()){
				System.out.println("User Id" + rs.getInt("regid"));
				return rs.getInt("regid");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	public List<Score> getScoreByUser(String username){
		List<Score> scoreList = new ArrayList<Score>();
		int userid = getCurrentUserId(username);
		System.out.println("user id :"+userid);
		
		try {
			stmt = conn.prepareStatement("select * from testscore where regid = ?");
			stmt.setInt(1, userid);
			rs = stmt.executeQuery();
			while(rs.next()){
				Score score = new Score();
				score.setSubject(rs.getString("subject"));
				score.setScore(rs.getString("marks"));
				score.setTestDate(rs.getString("date"));
				System.out.println("score :"+score.getScore());
				scoreList.add(score);
			}
			for (Score score : scoreList) {
				System.out.println(score.getSubject());
			}
			return scoreList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
