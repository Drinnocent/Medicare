package com.Medicare.Medicare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Medicare.Medicare.model.Admin;
import com.Medicare.Medicare.service.AdminService;

@RestController
@CrossOrigin(allowedHeaders = "*", origins = "*")
public class AdminController {
	@Autowired
	private AdminService adminService;

	@GetMapping("/dologin")
	public String login(@RequestParam String username, @RequestParam String password) {
		Admin admin = adminService.doLogin(username, password);
		System.out.println(username + " " + password + "IT IS EMPTY NO VALUES");
		if (admin != null) {
			System.out.println("success");

		} else {
			System.out.println(username + " " + password);
			System.out.println("empty");
		}
		return "products";
	}

}
