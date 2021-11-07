package com.Medicare.Medicare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Medicare.Medicare.model.Admin;
import com.Medicare.Medicare.repository.AdminRepository;



@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	
	public Admin doLogin(String username, String password) 
	{
		return adminRepository.login(username, password);
	}

}
