package com.Medicare.Medicare.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Medicare.Medicare.model.Cart;
import com.Medicare.Medicare.model.Medicine;
import com.Medicare.Medicare.model.User;
import com.Medicare.Medicare.service.CartService;
import com.Medicare.Medicare.service.MedicineService;
import com.Medicare.Medicare.service.UserService;

@Controller
@CrossOrigin(allowedHeaders = "*", origins = "*")
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private MedicineService medicineService;
	@Autowired
	private CartService cartService;

	@GetMapping("/")
	public String homepage() {
		return "login";
	}

	@GetMapping("/showRegisterform")
	public String getRegisterForm() {
		return "registerUser";
	}

	@PostMapping("/registerUser1")
	public User registerUser(@RequestBody User user) {
		if (user != null) {
			return userService.saveUser(user);
		} else
			return null;
	}

	@RequestMapping("/registerUser")
	public ModelAndView createProduct(@ModelAttribute("contact") User user) {
		user.setRole("client");
		userService.saveUser(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@GetMapping("/userLogin")
	public ModelAndView userLogin(HttpSession session, @RequestParam String email, @RequestParam String password) {
		User user = userService.doLogin(email, password);
		List<Medicine> prodlist = medicineService.getActiveProducts();
		List<User> users = userService.getAllUsers();
		List<Cart> cart = cartService.getProductItemsBought();
		ModelAndView mv = new ModelAndView();
		if ((user != null) && user.getRole().equals("client")) {
			System.out.println("user has logged in");
			mv.setViewName("products");
			mv.addObject("prodlist", prodlist);
			mv.addObject("users", users);
			mv.addObject("cart", cart);
			mv.addObject("user", user);
			session.setAttribute("email", email);
			return mv;

		} else if ((user != null) && user.getRole().equals("admin")) {
			System.out.println("user has logged in");
			mv.setViewName("AdminNav");
			mv.addObject("prodlist", prodlist);
			mv.addObject("user", user);
			mv.addObject("users", users);
			session.setAttribute("email", email);
			return mv;

		} else {
			System.out.println("user failed to log in");
			mv.setViewName("login");
			return mv;
		}
	}

	@GetMapping("/getUsers")
	public List<User> getUsers() {
		List<User> users = userService.getAllUsers();

		if (!users.isEmpty())
			return users;
		else
			return null;
	}

	@DeleteMapping("/deleteUser")
	public void deleteUser(@RequestParam Integer userid) {
		User user = userService.getUserById(userid);
		if (user != null)
			userService.removeUser(userid);
		else
			System.out.println("User does not exist");
	}

	@GetMapping("/getUserById")
	public User getUserById(Integer userid) {
		return userService.getUserById(userid);
	}

	@RequestMapping("/showProfile")
	public ModelAndView getProfile(HttpSession session) {
		String email = (String) session.getAttribute("email");
		User user = userService.findByEmail(email);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("profile");
		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/editUser")
	public ModelAndView editProfile(HttpSession session) {
		String email = (String) session.getAttribute("email");
		User user = userService.findByEmail(email);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editUser");
		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/updateUser")
	public ModelAndView updateStudent(HttpSession session, @RequestParam Integer userid, @RequestParam String email,
			@RequestParam String password, @RequestParam String address, @RequestParam String cellphoneno,
			@RequestParam String suburb, @RequestParam String city, @RequestParam String code) {

		String em = (String) session.getAttribute("email");
		User user = userService.findByEmail(em);

		user.setEmail(email);
		user.setPassword(password);
		user.setCellphoneno(cellphoneno);
		user.setAddress(address);
		user.setCity(city);
		user.setSuburb(suburb);
		user.setCode(code);
		userService.saveUser(user);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("editUser");

		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/homee")
	public ModelAndView homee(HttpSession session) {
		String em = (String) session.getAttribute("email");
		User user = userService.findByEmail(em);

		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		mv.addObject("prodlist", prodlist);
		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/category")
	public ModelAndView searcgbyCategory(HttpSession session, @RequestParam String category) {
		String em = (String) session.getAttribute("email");
		User user = userService.findByEmail(em);

		List<Medicine> prodlist = medicineService.searchByCategory(category);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("products");
		mv.addObject("prodlist", prodlist);
		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/adminProducts")
	public ModelAndView adminProducts() {
		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminProducts");
		mv.addObject("prodlist", prodlist);
		return mv;
	}

	@RequestMapping("/showEditProduct")
	public ModelAndView showEditProduct() {
		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateProducts");
		mv.addObject("prodlist", prodlist);
		return mv;
	}

	@RequestMapping("/updateProducts")
	public ModelAndView updateProduct(@RequestParam Integer medid, @RequestParam String name,
			@RequestParam String description, @RequestParam String price) {
		Medicine med = medicineService.findById(medid);
		med.setName(name);
		med.setPrice(price);
		med.setDescription(description);
		medicineService.addMedicine(med);
		List<Medicine> prodlist = medicineService.getMedicine();
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodlist", prodlist);
		mv.setViewName("updateProducts");
		return mv;
	}

	@GetMapping("/showAddProducts")
	public String addProd() {
		return "addProduct";

	}

	@RequestMapping("/newProduct")
	public ModelAndView createProduct(@ModelAttribute("contact") Medicine med) {
		med.setStatus("true");
		medicineService.addMedicine(med);
		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodlist", prodlist);
		mv.setViewName("addProduct");
		return mv;
	}

	@GetMapping("/AdminNav")
	public ModelAndView userLogin() {
		List<Medicine> prodlist = medicineService.getActiveProducts();
		List<User> users = userService.getAllUsers();
		List<Cart> cart = cartService.getProductItemsBought();
		ModelAndView mv = new ModelAndView();

		System.out.println("user has logged in");
		mv.setViewName("AdminNav");
		mv.addObject("prodlist", prodlist);
		mv.addObject("users", users);
		mv.addObject("cart", cart);
		return mv;
	}
	@GetMapping("/logout")
	public String logout() 
	{
		return "login";
	}
	@RequestMapping("/infoupdate")
	public ModelAndView infoupdate(@RequestParam Integer medid)
	{
		Medicine md=medicineService.findById(medid);
		List<Medicine> prodlist = medicineService.getActiveProducts();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updateProducts");
		mv.addObject("prodlist", prodlist);
		mv.addObject("md",md);
		return mv;
	}
	
	@RequestMapping("/activateDectivate")
	public ModelAndView activeDeactivate(@RequestParam Integer medid,@RequestParam String status) {
		Medicine med = medicineService.findById(medid);
		med.setStatus(status);
		medicineService.addMedicine(med);
		List<Medicine> prodlist = medicineService.getMedicine();
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodlist", prodlist);
		mv.setViewName("updateProducts");
		return mv;
	}

}
