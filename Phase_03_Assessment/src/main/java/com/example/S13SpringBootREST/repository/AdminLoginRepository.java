package com.example.S13SpringBootREST.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.S13SpringBootREST.entity.Admin;

public interface AdminLoginRepository extends CrudRepository<Admin, Integer> {
	
}
