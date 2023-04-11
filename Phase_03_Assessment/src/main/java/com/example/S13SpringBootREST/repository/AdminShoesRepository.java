package com.example.S13SpringBootREST.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.S13SpringBootREST.entity.Shoe;

public interface AdminShoesRepository extends CrudRepository<Shoe, Integer> {

	List<Shoe> getAllByOrderByPriceAsc();

	List<Shoe> getAllByOrderByPriceDesc();


}
