package ua.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.entity.Comment;
import ua.model.request.CommentRequest;
import ua.repository.CommentRepository;
import ua.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{

	
	private final CommentRepository repository;
	
	public CommentServiceImpl(CommentRepository repository){
		this.repository = repository;
		
	}
	
	@Override
	@Transactional(readOnly=true)
	public List<Comment> findAllComments() {
		List<Comment> comments = repository.findAllComments();
		return comments;
	}

	@Override
	public void save(CommentRequest request) {
Comment comment = new Comment();
comment.setComment(request.getComment());
//comment.setDateTime(request.getDateTime());
comment.setRate(request.getRate());
repository.save(comment);
	}

	@Override
	public CommentRequest findOne(Integer id) {
		Comment comment = repository.findOneRequest(id);
		comment.setComment(comment.getComment());
	//	comment.setDateTime(comment.getDateTime());
		comment.setRate(comment.getRate());
		return null;
	}

	@Override
	public void delete(Integer id) {
repository.delete(id);		
	}

}
