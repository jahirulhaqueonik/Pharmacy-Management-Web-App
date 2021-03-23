package pharmacycrudapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/add-medicine")
	public String addMedicine(Model m)
	{
		m.addAttribute("title","Add Medicine");
		return "add_medicine_form";
	}
}
