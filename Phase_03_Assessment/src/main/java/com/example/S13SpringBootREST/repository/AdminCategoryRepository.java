package com.example.S13SpringBootREST.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.example.S13SpringBootREST.entity.ShoeCategory;

public interface AdminCategoryRepository extends CrudRepository<ShoeCategory, Integer> {

	Optional<ShoeCategory> findByName(String category);


}
