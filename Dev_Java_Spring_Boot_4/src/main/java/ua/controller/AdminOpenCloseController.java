package ua.controller;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ua.entity.OpenClose;
import ua.service.impl.OpenCloseServiceImpl;

@Controller
@RequestMapping("/admin/openclose")
public class AdminOpenCloseController {
	
	private final OpenCloseServiceImpl service;

	@Autowired
	public AdminOpenCloseController(OpenCloseServiceImpl service) {
		this.service = service;
	}
	@GetMapping
	public String show(Model model) {
		model.addAttribute("opencloses", service.findAll());
		return "openclose";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		service.delete(id);
		return "redirect:/admin/openclose";
	}
	
	@PostMapping
	public String save(@RequestParam String time) {
		final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
		//String[] times = time.split(" ");
		 LocalTime dt = LocalTime.parse(time, dtf);
		
		//service.save(new OpenClose(LocalTime.of(Integer.valueOf(times[0]),Integer.valueOf(times[1]))));
		 service.save(new OpenClose(dt));
		return "redirect:/admin/openclose";
	}

}
