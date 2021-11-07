package com.Medicare.Medicare.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.Medicare.Medicare.model.Medicine;

@Repository
public interface MedicineRepository extends JpaRepository<Medicine, Integer> {
	List<Medicine> findByCategory(String category);

	List<Medicine> findByOrderByCategory();

	@Query("select u from Medicine u where u.status= 'true' ")
	public List<Medicine> selectActiveProducts();
}
