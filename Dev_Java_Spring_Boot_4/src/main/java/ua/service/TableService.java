package ua.service;

import java.util.List;

import ua.entity.Table;
import ua.model.request.TableRequest;

public interface TableService {

	List<Table> findAllTables();
	
void save(TableRequest request);
	
	TableRequest findOne(Integer id);
	
	void delete(Integer id);
}
