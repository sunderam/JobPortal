package pojo;

public class EducationalDetails {

	private int edId;
	private String sscPercentage;
	private String sscYearOfPassing;
	private String hscPercentage;
	private String hscYearOfPassing;
	private String degree;
	private String degreeYearOfPassing;
	private String degreeAggregate;
	private String collegeName;
	private String branch;
	private String course;
	
	public EducationalDetails(){
		
	}

	public EducationalDetails(int edId, String sscPercentage,
			String sscYearOfPassing, String hscPercentage,
			String hscYearOfPassing, String degree, String degreeYearOfPassing,
			String degreeAggregate, String collegeName, String branch,
			String course) {
		super();
		this.edId = edId;
		this.sscPercentage = sscPercentage;
		this.sscYearOfPassing = sscYearOfPassing;
		this.hscPercentage = hscPercentage;
		this.hscYearOfPassing = hscYearOfPassing;
		this.degree = degree;
		this.degreeYearOfPassing = degreeYearOfPassing;
		this.degreeAggregate = degreeAggregate;
		this.collegeName = collegeName;
		this.branch = branch;
		this.course = course;
	}

	public int getEdId() {
		return edId;
	}

	public void setEdId(int edId) {
		this.edId = edId;
	}

	public String getSscPercentage() {
		return sscPercentage;
	}

	public void setSscPercentage(String sscPercentage) {
		this.sscPercentage = sscPercentage;
	}

	public String getSscYearOfPassing() {
		return sscYearOfPassing;
	}

	public void setSscYearOfPassing(String sscYearOfPassing) {
		this.sscYearOfPassing = sscYearOfPassing;
	}

	public String getHscPercentage() {
		return hscPercentage;
	}

	public void setHscPercentage(String hscPercentage) {
		this.hscPercentage = hscPercentage;
	}

	public String getHscYearOfPassing() {
		return hscYearOfPassing;
	}

	public void setHscYearOfPassing(String hscYearOfPassing) {
		this.hscYearOfPassing = hscYearOfPassing;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getDegreeYearOfPassing() {
		return degreeYearOfPassing;
	}

	public void setDegreeYearOfPassing(String degreeYearOfPassing) {
		this.degreeYearOfPassing = degreeYearOfPassing;
	}

	public String getDegreeAggregate() {
		return degreeAggregate;
	}

	public void setDegreeAggregate(String degreeAggregate) {
		this.degreeAggregate = degreeAggregate;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}
	
}
