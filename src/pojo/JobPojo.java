/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author Dnyaneshwar
 */
public class JobPojo {

    private int jobid;
    private String companyName;
    private String post;
    private String location;
    private String salary;
    private String skillsNeed;
    private String experianceReq;
    private String description;

    /**
     * @return the jobid
     */
    public JobPojo(){
    	
    }

	public JobPojo(int jobid, String companyName, String post, String location,
			String salary, String skillsNeed, String experianceReq,
			String description) {
		super();
		this.jobid = jobid;
		this.companyName = companyName;
		this.post = post;
		this.location = location;
		this.salary = salary;
		this.skillsNeed = skillsNeed;
		this.experianceReq = experianceReq;
		this.description = description;
	}

	public int getJobid() {
		return jobid;
	}

	public void setJobid(int jobid) {
		this.jobid = jobid;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getSkillsNeed() {
		return skillsNeed;
	}

	public void setSkillsNeed(String skillsNeed) {
		this.skillsNeed = skillsNeed;
	}

	public String getExperianceReq() {
		return experianceReq;
	}

	public void setExperianceReq(String experianceReq) {
		this.experianceReq = experianceReq;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
