package ua.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import ua.entity.Table;
import ua.model.request.TableRequest;
import ua.repository.TableRepository;
import ua.service.TableService;

@Service
public class TableServiceImpl implements TableService{

	
	private final TableRepository repository;
	
	public TableServiceImpl(TableRepository repository) {
		this.repository = repository;
	}
	
	@Override
	public List<Table> findAllTables() {
		List<Table> views = repository.findAll();
		return views;
	}

	@Override
	public void save(TableRequest request) {
	Table table = new Table();
	table.setCafe(request.getCafe());
	table.setCountOfPeople(request.getCountOfPeople());
	//table.setFree(request.getIsFree());
	
	}

	@Override
	public TableRequest findOne(Integer id) {
		Table table = new Table();
		TableRequest request = new TableRequest();
		request.setCafe(table.getCafe());
		request.setCountOfPeople(table.getCountOfPeople());
	//	request.setFree(table.isFree());
		return request;
	}

	@Override
	public void delete(Integer id) {
		repository.delete(id);
	}

}
