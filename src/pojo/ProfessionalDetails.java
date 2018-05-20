package pojo;

public class ProfessionalDetails {

	private int proId;
	private String experiance;
	private String jobTitle;
	private String currentCTC;
	
	public ProfessionalDetails(){
		
	}

	public ProfessionalDetails(int proId, String experiance, String jobTitle,
			String currentCTC) {
		super();
		this.proId = proId;
		this.experiance = experiance;
		this.jobTitle = jobTitle;
		this.currentCTC = currentCTC;
	}

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
	}

	public String getExperiance() {
		return experiance;
	}

	public void setExperiance(String experiance) {
		this.experiance = experiance;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getCurrentCTC() {
		return currentCTC;
	}

	public void setCurrentCTC(String currentCTC) {
		this.currentCTC = currentCTC;
	}
	
}
