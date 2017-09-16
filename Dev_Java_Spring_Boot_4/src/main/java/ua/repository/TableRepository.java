package ua.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ua.entity.Table;

public interface TableRepository extends JpaRepository<Table, Integer>{

	//@Query("SELECT t.countOfPeople FROM Table t WHERE t.id = ?1")
	
	@Query("SELECT new ua.entity.Table(t.countOfPeople, t.isFree, t.cafe) FROM Table t")
	List<Table> findAllTables();
	
}