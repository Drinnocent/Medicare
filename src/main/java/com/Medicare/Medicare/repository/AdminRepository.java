package com.Medicare.Medicare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.Medicare.Medicare.model.Admin;


@Repository
public interface AdminRepository extends JpaRepository<Admin,Integer>{
	  @Query("select u from Admin u where u.username = :username and u.password = :password"
			  ) public Admin login(@Param("username")String
			  username, @Param("password")String password);

}
