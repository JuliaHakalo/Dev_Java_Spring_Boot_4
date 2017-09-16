package ua.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ua.entity.OpenClose;

public interface OpenCloseService extends CrudService<OpenClose,Integer>{

	Page<OpenClose> findAll(Pageable pageable);

}
