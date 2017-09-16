package ua.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.model.request.CafeRequest;
import ua.service.CafeService;

@Controller
@RequestMapping("/cafe")
@SessionAttributes("cafe")
public class CafeController {

	private final CafeService service;
	
	@Autowired
	public CafeController(CafeService service) {
		this.service = service;
	}
	
	@ModelAttribute("cafe")
	public CafeRequest getForm() {
		return new CafeRequest();
	}
	
	@GetMapping
	public String show(Model model,@PageableDefault Pageable pageable) {
		model.addAttribute("cafes", service.findAllIndexViews());
		return "cafe_index_view";
	}
	
	@GetMapping("/{id}")
	public String show(@PathVariable Integer id, Model model, @PageableDefault Pageable pageable){
		model.addAttribute("cafe", service.findOne(id));
		return "cafe_view";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		service.delete(id);
		return "redirect:/cafe";
	}
	
	@PostMapping
	public String save(@ModelAttribute("cafe") CafeRequest request, SessionStatus status) {
		service.save(request);
		return cancel(status);
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable Integer id, Model model, @PageableDefault Pageable pageable) {
		model.addAttribute("cafe", service.findOne(id));
		return show(model, pageable);
	}
	
	@GetMapping("/cancel")
	public String cancel(SessionStatus status) {
		status.setComplete();
		return "redirect:/cafe";
	}
}