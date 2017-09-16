package ua.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ua.entity.Cuisine;
import ua.entity.Ingredient;
import ua.entity.Meal;
import ua.model.request.MealRequest;
import ua.model.view.MealView;

public interface MealService {

	List<String> findAllCuisines();
	
	List<String> findAllIngredients();
	
	List<MealView> findAllViews();
	
	void save(MealRequest request);
	
	MealRequest findOne(Integer id);
	
	void delete(Integer id);

	Page<Meal> findAllViews(Pageable pageable);

	Page<Meal> findAllCuisines(Pageable pageable);

	Page<Meal> findAllIngredients(Pageable pageable);
}