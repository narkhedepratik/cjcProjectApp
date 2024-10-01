package equ.cjc.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int StudentId;
	private String studentFullName;
	private String studentEmail;
	private int studentAge;
	private String studentCollageName;
	private String studentCourse;  // radio button 
	private String batchNumber;   // input
	private String batchMode;     //dropdown  
	private float feesPaid;            
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public String getStudentFullName() {
		return studentFullName;
	}
	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public int getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}
	public String getStudentCollageName() {
		return studentCollageName;
	}
	public void setStudentCollageName(String studentCollageName) {
		this.studentCollageName = studentCollageName;
	}
	public String getStudentCourse() {
		return studentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}
	public String getBatchNumber() {
		return batchNumber;
	}
	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}
	public String getBatchMode() {
		return batchMode;
	}
	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}
	public float getFeesPaid() {
		return feesPaid;
	}
	public void setFeesPaid(Float feesPaid) {
		this.feesPaid = feesPaid;
	}
	@Override
	public String toString() {
		return "Student [StudentId=" + StudentId + ", studentFullName=" + studentFullName + ", studentEmail="
				+ studentEmail + ", StudentAge=" + studentAge + ", studentCollageName=" + studentCollageName
				+ ", StudentCourse=" + studentCourse + ", batchNumber=" + batchNumber + ", batchMode=" + batchMode
				+ ", feesPaid=" + feesPaid + "]";
	}
	
}
