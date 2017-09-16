package ua.service;

import java.util.List;

import ua.model.request.CafeRequest;
import ua.model.view.CafeIndexView;
import ua.model.view.CafeView;

public interface CafeService {
	
	List<CafeIndexView> findAllIndexViews();
	
	List<CafeView> findAllViews();
	
	void save(CafeRequest request);
	
	CafeRequest findOne(Integer id);
	
	void delete(Integer id);
}