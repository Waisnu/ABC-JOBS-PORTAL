package com.abcportal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bulk_email")
public class BulkEmail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bulk_id")
	private Long bulkId;
	
	@Column(name = "send_by")
	private String sendBy;
	
	@Column(name = "email_subject")
	private String emailSubject;
	
	@Column(name = "email_body")
	private String emailBody;
	
	@Column(name = "created_at")
	private String createdAt;
	
	public BulkEmail() {}
	
	public BulkEmail(Long bulkId, String sendBy, String emailSubject, String emailBody, String createdAt) {
		this.bulkId = bulkId;
		this.sendBy = sendBy;
		this.emailSubject = emailSubject;
		this.emailBody = emailBody;
		this.createdAt = createdAt;
	}

	public Long getBulkId() {
		return bulkId;
	}

	public void setBulkId(Long bulkId) {
		this.bulkId = bulkId;
	}

	public String getSendBy() {
		return sendBy;
	}

	public void setSendBy(String sendBy) {
		this.sendBy = sendBy;
	}

	public String getEmailSubject() {
		return emailSubject;
	}

	public void setEmailSubject(String emailSubject) {
		this.emailSubject = emailSubject;
	}

	public String getEmailBody() {
		return emailBody;
	}

	public void setEmailBody(String emailBody) {
		this.emailBody = emailBody;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
}
