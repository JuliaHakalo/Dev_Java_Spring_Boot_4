package ua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.model.request.CommentRequest;
import ua.service.CommentService;

@Controller
@RequestMapping("/cafe/{id}/comments")
@SessionAttributes("comment")
public class CommentsController {

	
	
	private final CommentService service;
	@Autowired
	public CommentsController(CommentService service){
		this.service = service;	
	}

	@ModelAttribute("comment")
	public CommentRequest getForm() {
		return new CommentRequest();
	}
	

	@GetMapping
	public String show(Model model) {
		model.addAttribute("comments", service.findAllComments());
		return "comment";
	}
	

	@GetMapping("/{id}")
	public String show(@PathVariable Integer id, Model model){
		model.addAttribute("cafe", service.findOne(id));
		return "comment";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		service.delete(id);
		return "redirect:/cafe/{id}/comments";
	}
	
	@PostMapping
	public String save(@ModelAttribute("comment") CommentRequest request, SessionStatus status) {
		service.save(request);
		return cancel(status);
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable Integer id, Model model) {
		model.addAttribute("comment", service.findOne(id));
		return show(model);
	}
	
	@GetMapping("/cancel")
	public String cancel(SessionStatus status) {
		status.setComplete();
		return "redirect:/cafe/{id}/comments";
	}

}
