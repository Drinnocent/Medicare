package com.Medicare.Medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Medicare.Medicare.model.Medicine;
import com.Medicare.Medicare.repository.MedicineRepository;




@Service
public class MedicineService {
	@Autowired
	private MedicineRepository medicineRepository;
	
	public List<Medicine> getMedicine()
	{
		return medicineRepository.findAll();
	}
	public Medicine addMedicine(Medicine food)
	{
		return medicineRepository.save(food);
	}
	public List<Medicine> searchByCategory(String category)
	{
		return medicineRepository.findByCategory(category);
		
	}
	public List<Medicine> getActiveProducts()
	{
		return medicineRepository.selectActiveProducts();
	}
	public void delete(Integer id) 
	{
		medicineRepository.deleteById(id);
	}
	public Medicine findById(Integer id) 
	{
		return medicineRepository.findById(id).get();
	}
	public List<Medicine> orderByCategory()
	{
		return medicineRepository.findByOrderByCategory();
	}

}
