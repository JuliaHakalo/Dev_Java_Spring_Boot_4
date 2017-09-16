package ua.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="comment")
public class Comment  extends AbstractEntity{

	private BigDecimal rate;
	@Lob
	private String comment;
	
	private LocalDateTime dateTime;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private Cafe cafe;

	public Comment(BigDecimal rate, String comment, LocalDateTime dateTime) {
		this.rate = rate;
		this.comment = comment;
		this.dateTime = dateTime;
	//	this.cafe = cafe;
		//this.cafe = cafe.toString();
	}



	public Comment() {
	}
	
	

	public Cafe getCafe() {
		return cafe;
	}


	public void setCafe(Cafe cafe) {
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

	public LocalDateTime getDateTime() {
		return dateTime;
	}

	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}

	@Override
	public String toString() {
		return "Comment [rate=" + rate + ", comment=" + comment + ", dateTime=" + dateTime + "]";
	}
	
	
	
	
}
