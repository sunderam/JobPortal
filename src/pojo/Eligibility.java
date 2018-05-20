package pojo;

public class Eligibility {

	private int id;
	private boolean test;
	private boolean feespaid;
	private boolean accountExpire;
	
	public Eligibility(){
		
	}

	public Eligibility(int id, boolean test, boolean feespaid,
			boolean accountExpire) {
		super();
		this.id = id;
		this.test = test;
		this.feespaid = feespaid;
		this.accountExpire = accountExpire;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isTest() {
		return test;
	}

	public void setTest(boolean test) {
		this.test = test;
	}

	public boolean isFeespaid() {
		return feespaid;
	}

	public void setFeespaid(boolean feespaid) {
		this.feespaid = feespaid;
	}

	public boolean isAccountExpire() {
		return accountExpire;
	}

	public void setAccountExpire(boolean accountExpire) {
		this.accountExpire = accountExpire;
	}
	
}
