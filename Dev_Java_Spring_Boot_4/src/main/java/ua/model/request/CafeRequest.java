package ua.model.request;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import ua.entity.Meal;
import ua.entity.OpenClose;
import ua.entity.Type;
import ua.entity.User;
import ua.entity.Table;

public class CafeRequest {
	
private int id;
	
private String name;

private BigDecimal rate;
	
	private String photoUrl;
	
	private int version;
	
	private String address;
	
	private String shortDescription;
	
	private String fullDescription;
	
	private Type type;
	
	private String phone;
	
	private OpenClose open;
	
	private OpenClose close;
	
	private User user;
	
	private List<Table> tables = new ArrayList<>();
	
	private List<Meal> meals = new ArrayList<>();

	public CafeRequest(int id, String name, BigDecimal rate, String photoUrl, int version, String address, String shortDescription,
			String fullDescription, Type type, String phone, OpenClose open, OpenClose close, User user,
			List<Table> tables, List<Meal> meals) {
		this.id = id;
		this.name = name;
		this.rate = rate;
		this.photoUrl = photoUrl;
		this.version = version;
		this.address = address;
		this.shortDescription = shortDescription;
		this.fullDescription = fullDescription;
		this.type = type;
		this.phone = phone;
		this.open = open;
		this.close = close;
		this.user = user;
		this.tables = tables;
		this.meals = meals;
	}
	

	public CafeRequest() {
		
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getRate() {
		return rate;
	}

	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getFullDescription() {
		return fullDescription;
	}

	public void setFullDescription(String fullDescription) {
		this.fullDescription = fullDescription;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public OpenClose getOpen() {
		return open;
	}

	public void setOpen(OpenClose open) {
		this.open = open;
	}

	public OpenClose getClose() {
		return close;
	}

	public void setClose(OpenClose close) {
		this.close = close;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Table> getTables() {
		return tables;
	}

	public void setTables(List<Table> tables) {
		this.tables = tables;
	}

	public List<Meal> getMeals() {
		return meals;
	}

	public void setMeals(List<Meal> meals) {
		this.meals = meals;
	}

	
}