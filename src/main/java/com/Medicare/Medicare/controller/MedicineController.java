package com.Medicare.Medicare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Medicare.Medicare.model.Medicine;
import com.Medicare.Medicare.service.MedicineService;

@RestController
@CrossOrigin(allowedHeaders = "*", origins = "*")
public class MedicineController {

	@Autowired
	private MedicineService medicineService;

	@PostMapping("/addMedicine")
	public Medicine addMedicineItem(@RequestBody Medicine medicine) {
		return medicineService.addMedicine(medicine);
	}

	@GetMapping("/getMedicineItems")
	public List<Medicine> getMedicines() {
		return medicineService.getActiveProducts();
	}

	@GetMapping("/getProducts")
	public ModelAndView getMedItema() {
		List<Medicine> prodlist = medicineService.getMedicine();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		mv.addObject("prodlist", prodlist);
		return mv;
	}

	@GetMapping("/getByCategory")
	public List<Medicine> getByCategory(@RequestParam String category) {
		return medicineService.searchByCategory(category);
	}

	@RequestMapping("/deleteMedicine")
	public ModelAndView  deleteItem(@RequestParam Integer medid) {
		medicineService.delete(medid);
		List<Medicine> prodlist = medicineService.getMedicine();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updateProducts");
		mv.addObject("prodlist", prodlist);
		return mv;
	}
	@GetMapping("/showDeleteForm")
	public String getdeleteForm() 
	{
		return  "deleteProduct";
	}
	
	@GetMapping("/OrderbyCategory")
	public ModelAndView getActiveProd() {
		List<Medicine> prodlist = medicineService.orderByCategory();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		mv.addObject("prodlist", prodlist);
		return mv;
	}
	

	

}
