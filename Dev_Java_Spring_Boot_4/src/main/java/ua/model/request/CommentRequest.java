package ua.model.request;

import java.math.BigDecimal;



public class CommentRequest {

	private BigDecimal rate;
	
	private String comment;
	
	private String dateTime;
	
	private String cafe;

	public CommentRequest(BigDecimal rate, String comment, String dateTime, String cafe) {
		this.rate = rate;
		this.comment = comment;
		this.dateTime = dateTime;
		this.cafe = cafe;
	}

	public CommentRequest() {
	}

	
	
	public String getCafe() {
		return cafe;
	}

	public void setCafe(String cafe) {
		this.cafe = cafe;
	}

	public BigDecimal getRate() {
		return rate;
	}

	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	
	
	
}
