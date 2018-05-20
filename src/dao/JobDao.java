package dao;

import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import pojo.Eligibility;
import pojo.JobPojo;

public class JobDao extends Connection {

	public JobDao() throws Exception {
		conn = dao.DatabaseConnection.getInstance().dataConnection();

		if (conn != null) {
			System.out.println("Connection success in LoginDao");
		} else {
			System.out.println("Connetion Failed in LoginDao");
		}
	}

	public boolean addJobs(JobPojo jobs) throws SQLException{
		stmt = conn.prepareStatement("insert into job (companyName,Location,Post,Package,Skills,JobDescription,Exp) values(?,?,?,?,?,?,?)");
		stmt.setString(1, jobs.getCompanyName());
		stmt.setString(2, jobs.getLocation());
		stmt.setString(3, jobs.getPost());
		stmt.setString(4, jobs.getSalary());
		stmt.setString(5, jobs.getSkillsNeed());
		stmt.setString(6, jobs.getDescription());
		stmt.setString(7, jobs.getExperianceReq());
		int i = stmt.executeUpdate();
		if(i>0)
			return true;
		return false;
	}
	
	public List<JobPojo> getJobs() throws SQLException{
		List<JobPojo> jobList = new ArrayList<JobPojo>();
		stmt = conn.prepareStatement("select * from job LIMIT 2");
		rs = stmt.executeQuery();
		while(rs.next()){
			JobPojo job = new JobPojo();
			job.setJobid(rs.getInt("JobId"));
			job.setCompanyName(rs.getString("companyName"));
			job.setLocation(rs.getString("Location"));
			job.setPost(rs.getString("post"));
			job.setSalary(rs.getString("package"));
			job.setSkillsNeed(rs.getString("skills"));
			job.setDescription(rs.getString("JobDescription"));
			job.setExperianceReq(rs.getString("Exp"));
			
			jobList.add(job);
		}
		return jobList;
	}

	public List<JobPojo> getAllJobs() throws SQLException{
		List<JobPojo> jobList = new ArrayList<JobPojo>();
		stmt = conn.prepareStatement("select * from job");
		rs = stmt.executeQuery();
		while(rs.next()){
			JobPojo job = new JobPojo();
			job.setJobid(rs.getInt("JobId"));
			job.setCompanyName(rs.getString("companyName"));
			job.setLocation(rs.getString("Location"));
			job.setPost(rs.getString("post"));
			job.setSalary(rs.getString("package"));
			job.setSkillsNeed(rs.getString("skills"));
			job.setDescription(rs.getString("JobDescription"));
			job.setExperianceReq(rs.getString("Exp"));
			
			jobList.add(job);
		}
		return jobList;
	}
	
	public JobPojo getJobById(int jobId) throws SQLException{
		
		stmt = conn.prepareStatement("select * from job where JobId = ?");
		stmt.setInt(1, jobId);
		rs = stmt.executeQuery();
		while(rs.next()){
			JobPojo job = new JobPojo();
			job.setJobid(rs.getInt("JobId"));
			job.setCompanyName(rs.getString("companyName"));
			job.setLocation(rs.getString("Location"));
			job.setPost(rs.getString("post"));
			job.setSalary(rs.getString("package"));
			job.setSkillsNeed(rs.getString("skills"));
			job.setDescription(rs.getString("JobDescription"));
			job.setExperianceReq(rs.getString("Exp"));
			
			return job;
		}
		return null;
	}
	
	
	
	public Eligibility isEligible(String username) throws Exception{
		ScoreDao dao = new ScoreDao();
		int id = dao.getCurrentUserId(username);
		
		stmt = conn.prepareStatement("select exam,feespaid from eligibility where regid = ?");
		stmt.setInt(1, id);
		rs = stmt.executeQuery();
		while(rs.next()){
			Eligibility elg = new Eligibility();
			elg.setTest(rs.getBoolean("exam"));
			elg.setFeespaid(rs.getBoolean("feespaid"));
			
			return elg;
			
		}
		return null;
		
	}
	
	public boolean applyJob(int jobId,String user) throws Exception{
		ScoreDao dao = new ScoreDao();
		int regId = dao.getCurrentUserId(user);
		System.out.println("regId :"+regId+ " job Id :"+jobId);
		stmt = conn.prepareStatement("insert into jobapply(JobId,regid,dateofapply) values(?,?,?)");
		stmt.setInt(1, jobId);
		stmt.setInt(2, regId);
		
		java.util.Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
		String strDate = dateFormat.format(date);
		
		stmt.setString(3, strDate);
		int i = stmt.executeUpdate();
		
		if(i>0){
			return true;
		}
		return false;
	}


}
