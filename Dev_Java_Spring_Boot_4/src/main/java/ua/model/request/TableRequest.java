package ua.model.request;


import ua.entity.Cafe;

public class TableRequest {

	private int countOfPeople;
	
	private String isFree;
	
	private Cafe cafe;

	public TableRequest(int countOfPeople, String isFree, Cafe cafe) {
		this.countOfPeople = countOfPeople;
		this.isFree = isFree;
		this.cafe = cafe;
	}

	public TableRequest() {
	}

	public int getCountOfPeople() {
		return countOfPeople;
	}

	public void setCountOfPeople(int countOfPeople) {
		this.countOfPeople = countOfPeople;
	}

	public String getIsFree() {
		return isFree;
	}

	public void setIsFree(String isFree) {
		this.isFree = isFree;
	}

	public Cafe getCafe() {
		return cafe;
	}

	public void setCafe(Cafe cafe) {
		this.cafe = cafe;
	}
	
	
	
}
