package pharmacycrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import pharmacycrudapp.dao.PharmacyDao;
import pharmacycrudapp.model.Medicine;


@Controller
public class MainController {
	
	@Autowired
	private PharmacyDao pharmacyDao;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Medicine> medicines = pharmacyDao.getMedicines();
		m.addAttribute("medicine",medicines);
		return "index";
	}
	
	//show add medicine form
	
	@RequestMapping("/add-medicine")
	public String addMedicine(Model m)
	{
		m.addAttribute("title","Add Medicine");
		return "add_medicine_form";
	}
	
	//handle add medicine form
	
	@RequestMapping(value="/handle-medicine", method = RequestMethod.POST)
	public RedirectView handleMedicine(@ModelAttribute Medicine medicine, HttpServletRequest request)
	{
		System.out.println(medicine);
		pharmacyDao.createMedicine(medicine);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{medicineId}")
	public RedirectView deleteMedicine(@PathVariable("medicineId") int medicineId,HttpServletRequest request)
	{
		this.pharmacyDao.deleteMedicine(medicineId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("/update/{medicineId}")
	public String updateForm(@PathVariable("medicineId") int pid,Model model)
	{
		Medicine medicine = this.pharmacyDao.getMedicine(pid);
		model.addAttribute("medicine",medicine);
		return "update-form";
	}
}
