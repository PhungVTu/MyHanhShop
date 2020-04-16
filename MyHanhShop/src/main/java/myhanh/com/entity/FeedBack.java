package myhanh.com.entity;


import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "phanhoi")

public class FeedBack {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "email")
	private String email;
	@Column(name = "ngay_phan_hoi")
	private Date dateFeedBack;
	@Column(name = "noi_dung_phan_hoi")
	private String contendFeedBack;
	@Column(name = "full_name")
	public String fullName;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDateFeedBack() {
		return dateFeedBack;
	}
	public void setDateFeedBack(Date dateFeedBack) {
		this.dateFeedBack = dateFeedBack;
	}
	public String getContendFeedBack() {
		return contendFeedBack;
	}
	public void setContendFeedBack(String contendFeedBack) {
		this.contendFeedBack = contendFeedBack;
	}
	public FeedBack()
	{
		this.dateFeedBack = Date.from((LocalDate.now()).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
	}
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public FeedBack(Long id,String fullName,String email,String contendFeedBack)
	{
		this.id=id;
		this.fullName=fullName;
		this.email=email;
		this.dateFeedBack= Date.from((LocalDate.now()).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
		this.contendFeedBack=contendFeedBack;
	}
	
	
	


}
