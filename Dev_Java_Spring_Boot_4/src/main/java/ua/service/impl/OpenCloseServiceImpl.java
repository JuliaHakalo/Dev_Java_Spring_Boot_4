package ua.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import ua.entity.OpenClose;
import ua.repository.OpenCloseRepository;
import ua.service.OpenCloseService;
@Service
public class OpenCloseServiceImpl extends CrudServiceImpl<OpenClose,Integer>implements OpenCloseService{

	private final OpenCloseRepository repository;
	
	@Autowired
	public OpenCloseServiceImpl(OpenCloseRepository repository) {
		super(repository);
		this.repository = repository;
	}

	@Override
	public Page<OpenClose> findAll(Pageable pageable) {
		return repository.findAll(pageable);
	}


}
