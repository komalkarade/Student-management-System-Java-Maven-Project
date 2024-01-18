package com.entity;

public class Student {

	private String firstname;
	private String middlename;
	private String lastname;
	private String contactnumber;
	private String city;
	private String emailid;
	private String gender;
	private String country;
	private String bloodgroup;
	private int userid;
	private String password;
	private String confirmpassword;
	private String securityquestion;
	private String securityanswer;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String firstname, String middlename, String lastname, String contactnumber, String city,
			String emailid, String gender, String country, String bloodgroup, int userid, String password,
			String confirmpassword, String securityquestion, String securityanswer) {
		super();
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.contactnumber = contactnumber;
		this.city = city;
		this.emailid = emailid;
		this.gender = gender;
		this.country = country;
		this.bloodgroup = bloodgroup;
		this.userid = userid;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.securityquestion = securityquestion;
		this.securityanswer = securityanswer;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getSecurityquestion() {
		return securityquestion;
	}
	public void setSecurityquestion(String securityquestion) {
		this.securityquestion = securityquestion;
	}
	public String getSecurityanswer() {
		return securityanswer;
	}
	public void setSecurityanswer(String securityanswer) {
		this.securityanswer = securityanswer;
	}
	@Override
	public String toString() {
		return "Student [firstname=" + firstname + ", middlename=" + middlename + ", lastname=" + lastname
				+ ", contactnumber=" + contactnumber + ", city=" + city + ", emailid=" + emailid + ", gender=" + gender
				+ ", country=" + country + ", bloodgroup=" + bloodgroup + ", userid=" + userid + ", password="
				+ password + ", confirmpassword=" + confirmpassword + ", securityquestion=" + securityquestion
				+ ", securityanswer=" + securityanswer + "]";
	}



}
