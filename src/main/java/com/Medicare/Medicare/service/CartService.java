package com.Medicare.Medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Medicare.Medicare.model.Cart;
import com.Medicare.Medicare.repository.CartRepository;

@Service
public class CartService {
	@Autowired
	private CartRepository cartRepository;
	public void saveCart(Cart cart) 
	{
		cartRepository.save(cart);
	}
	public List<Cart> getProductItemsBought()
	{
		return cartRepository.findAll();
	}

}
