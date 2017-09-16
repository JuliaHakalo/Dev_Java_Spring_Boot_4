package ua.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.entity.Cafe;
import ua.model.request.CafeRequest;
import ua.model.view.CafeIndexView;
import ua.model.view.CafeView;
import ua.repository.CafeRepository;
import ua.service.CafeService;

@Service
public class CafeServiceImpl implements CafeService {

	private final CafeRepository repository;

	public CafeServiceImpl(CafeRepository repository) {
		this.repository = repository;
	}

	
	@Override
	@Transactional(readOnly=true)
	public List<CafeIndexView> findAllIndexViews() {
		List<CafeIndexView> views = repository.findAllIndexViews();
		return views;
	}
	
	@Override
	@Transactional(readOnly=true)
	public List<CafeView> findAllViews() {
		List<CafeView> views = repository.findAllViews();
		return views;
	}

	@Override
	public void save(CafeRequest request) {
		Cafe cafe = new Cafe();
		cafe.setAddress(request.getAddress());
		cafe.setFullDescription(request.getFullDescription());
		cafe.setName(request.getName());
		cafe.setPhone(request.getPhone());
		cafe.setRate(request.getRate());
		cafe.setClose(request.getClose());
		cafe.setMeals(request.getMeals());
		cafe.setOpen(request.getOpen());
		cafe.setPhotoUrl(request.getPhotoUrl());
		cafe.setShortDescription(request.getShortDescription());
		cafe.setTables(request.getTables());
		cafe.setType(request.getType());
		repository.save(cafe);
	}

	@Override
	public CafeRequest findOne(Integer id) {
		Cafe cafe = repository.findOneRequest(id);
		CafeRequest request = new CafeRequest();
		request.setAddress(cafe.getAddress());
		request.setFullDescription(cafe.getFullDescription());
		request.setName(cafe.getName());
		request.setPhone(cafe.getPhone());
		request.setRate(cafe.getRate());
		request.setClose(cafe.getClose());
		request.setMeals(cafe.getMeals());
		request.setOpen(cafe.getOpen());
		request.setPhotoUrl(cafe.getPhotoUrl());
		request.setShortDescription(cafe.getShortDescription());
		request.setTables(cafe.getTables());
		request.setType(cafe.getType());
		return request;
	}

	@Override
	public void delete(Integer id) {
		repository.delete(id);
	}

}
