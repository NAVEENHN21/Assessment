 package com.example.S13SpringBootREST.repository;

import java.util.List;
import com.example.S13SpringBootREST.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {
	    List<User> findByNameContaining(String name);
	    
	    User findBynameAndPassword(String name, String password);

	}

	
