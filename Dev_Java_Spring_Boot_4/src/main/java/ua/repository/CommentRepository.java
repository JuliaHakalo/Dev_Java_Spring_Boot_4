package ua.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ua.entity.Comment;

public interface CommentRepository extends JpaRepository<Comment, Integer>{

	@Query("SELECT new ua.entity.Comment(c.rate, c.comment, c.dateTime) FROM Comment c")
	List<Comment> findAllComments();
	
	
	@Query("SELECT DISTINCT c FROM Comment c WHERE c.id=?1")
	Comment findOneRequest(Integer id);
}
