package com.Medicare.Medicare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Medicare.Medicare.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {

}
