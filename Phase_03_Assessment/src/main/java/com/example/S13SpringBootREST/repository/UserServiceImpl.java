package com.example.S13SpringBootREST.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.S13SpringBootREST.entity.User;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> searchUsers(String query) {
        return userRepository.findByNameContaining(query);
    }

	@Override
	public List<User> findall() {
		// TODO Auto-generated method stub
		return (List<User>) userRepository.findAll();
	}



	   @PersistenceContext
	    private EntityManager entityManager;

	    @Override
	    public List<User> findByNameContaining(String name) {
	        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
	        CriteriaQuery<User> query = builder.createQuery(User.class);
	        Root<User> root = query.from(User.class);
	        query.select(root).where(builder.like(root.get("name"), "%" + name + "%"));
	        TypedQuery<User> typedQuery = entityManager.createQuery(query);
	        return typedQuery.getResultList();
	    }

		@Override
		public User findByUsernameAndPassword(String name, String password) {
			// TODO Auto-generated method stub
			return null;
		}
}
