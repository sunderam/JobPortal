package pojo;

public class Score {

	private int scoreId;
	private String subject;
	private String score;
	private String testDate;
	
	public Score(){
		
	}

	public Score(int scoreId, String subject, String score, String testDate) {
		super();
		this.scoreId = scoreId;
		this.subject = subject;
		this.score = score;
		this.testDate = testDate;
	}

	public int getScoreId() {
		return scoreId;
	}

	public void setScoreId(int scoreId) {
		this.scoreId = scoreId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}
	
}
