package com.Medicare.Medicare.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Medicare.Medicare.model.Cart;
import com.Medicare.Medicare.model.Medicine;
import com.Medicare.Medicare.model.User;
import com.Medicare.Medicare.service.CartService;
import com.Medicare.Medicare.service.MedicineService;
import com.Medicare.Medicare.service.UserService;

@RestController
public class CartController {
	@Autowired
	private CartService cartService;

	@Autowired
	private UserService userService;

	@Autowired
	private MedicineService medicineService;

	@RequestMapping("/buyProduct")
	public ModelAndView createProduct(@ModelAttribute("contact") Cart cart) {
		cartService.saveCart(cart);
		List<Medicine> prodlist = medicineService.getActiveProducts();
		User user = userService.getUserById(cart.getUserid());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		mv.addObject("prodlist", prodlist);
		mv.addObject("user", user);
		return mv;
	}

	@GetMapping("/checkOut")
	public ModelAndView getProductsBoughts() {
		List<Cart> cartlist = cartService.getProductItemsBought();
		List<Medicine> prodlist = new ArrayList<>();
		List<Double> total = new ArrayList<>();
		if(cartlist.isEmpty()) 
		{
			System.out.println("<h1>You have not made any orders</h1>");
			ModelAndView mv = new ModelAndView();
			mv.setViewName("products");
			return  mv;
		}
		else 
		{
			double t = 0.00;
			for (int i = 0; i < cartlist.size(); i++) {
				prodlist.add(medicineService.findById(cartlist.get(i).getMedid()));
				t += Double.parseDouble(medicineService.findById(cartlist.get(i).getMedid()).getPrice());
			}
			User user = userService.getUserById(cartlist.get(0).getUserid());
			total.add(t);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("checkOut");
			mv.addObject("prodlist", prodlist);
			mv.addObject("total", total);
			mv.addObject("user", user);
			return mv;
		}
		
	}

	@RequestMapping("OrderSuccess")
	private ModelAndView orderSuccess(@RequestParam Integer userid) 
	{
		System.out.println("<h1>ORDER SUCCESS THANK YOU </h1>");
		User user = userService.getUserById(userid);
		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv = new ModelAndView();
			System.out.println("user has logged in");
			mv.setViewName("products");
			mv.addObject("prodlist", prodlist);
			mv.addObject("user",user);
			return mv;
	}	
}
