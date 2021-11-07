package com.Medicare.Medicare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.Medicare.Medicare.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	@Query("select u from User u where u.email = :email and u.password = :password")
	public User login(@Param("email") String email, @Param("password") String password);
	
	public User findByEmail(String email);

}
