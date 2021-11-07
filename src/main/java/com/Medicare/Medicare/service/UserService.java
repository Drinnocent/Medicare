package com.Medicare.Medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Medicare.Medicare.model.User;
import com.Medicare.Medicare.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	public User saveUser(User user) 
	{
		return userRepository.save(user);
	}
	public User getUserById(Integer userid) 
	{
		return userRepository.findById(userid).get();
	}
 public User doLogin(String email, String password) 
 {
	return userRepository.login(email, password) ;
 }
 public List<User> getAllUsers()
 {
	 return userRepository.findAll();
 }
 public void removeUser(Integer userid)
 {
	 userRepository.deleteById(userid);
 }
 public User findByEmail(String email) 
 {
	 return userRepository.findByEmail(email);
 }
}
