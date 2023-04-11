package com.example.S13SpringBootREST.repository;

import java.util.List;

import com.example.S13SpringBootREST.entity.User;

	public interface UserService {
	    List<User> searchUsers(String query);

		public List<User> findall();

		
	    List<User> findByNameContaining(String name);

	    User findByUsernameAndPassword(String name, String password);


	}


