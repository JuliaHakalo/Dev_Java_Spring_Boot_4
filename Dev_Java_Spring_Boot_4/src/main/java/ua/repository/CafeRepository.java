package ua.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import ua.entity.Cafe;
import ua.model.view.CafeIndexView;
import ua.model.view.CafeView;

public interface CafeRepository extends JpaNameRepository<Cafe>{
	
	@Query("SELECT new ua.model.view.CafeIndexView(c.id, c.rate, c.name, c.photoUrl, c.version, c.address, c.shortDescription, c.type) FROM Cafe c ORDER BY c.rate DESC")
	//"SELECT new ua.model.view.CafeView(c.id, c.rate, c.name, c.photoUrl, c.version, c.address, c.fullDescription, c.type, c.phone, o.time, cl.time) FROM Cafe c JOIN c.OpenClose o ON o.id = c.open_id JOIN c.OpenClose cl ON cl.id = c.close_id"
	List<CafeIndexView> findAllIndexViews();
	
	
	//@Query("SELECT new ua.model.view.MealView(m.id, m.title, m.description, m.price, m.photoUrl, m.version, c.name, m.weight) FROM Meal m JOIN m.cuisine c")
	
	@Query("SELECT new ua.model.view.CafeView(c.id, c.rate, c.name, c.photoUrl, c.version, c.address, c.fullDescription, c.type, c.phone, o.time, cl.time) FROM Cafe c JOIN c.open o JOIN c.close cl")
	//"SELECT new ua.model.view.CafeView(c.id, c.rate, c.name, c.photoUrl, c.version, c.address, c.fullDescription, c.type, c.phone, o.time, cl.time) FROM Cafe c JOIN c.OpenClose o ON o.id = c.open_id JOIN c.OpenClose cl ON cl.id = c.close_id"
List<CafeView> findAllViews();
	
	/*@Query(value = "SELECT new ua.model.view.MealView(m.id, m.title, m.description, m.price, m.photoUrl, m.version, c.name, m.weight) FROM Meal m JOIN m.cuisine c",
			countQuery="SELECT count(m.id) FROM Meal m JOIN m.cuisine c")
	Page<MealView> findAllViews(Pageable pageable);*/
	
	@Query("SELECT m.title FROM Meal m")
	List<String> findAllMeals();
	
	
	
	@Query("SELECT DISTINCT c FROM Cafe c  LEFT JOIN FETCH c.meals WHERE c.id=?1")
	Cafe findOneRequest(Integer id);
}

//@Query("SELECT DISTINCT m FROM Meal m JOIN FETCH m.cuisine LEFT JOIN FETCH m.ingredients WHERE m.id=?1")