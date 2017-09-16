package ua.service;

import java.util.List;

import ua.entity.Comment;
import ua.model.request.CommentRequest;

public interface CommentService {
	
	
	List<Comment> findAllComments();
	
	void save(CommentRequest request);
	
	CommentRequest findOne(Integer id);
	
	void delete(Integer id);
}
