package com.expleo.finalProject1.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.expleo.finalProject1.entity.User;


public interface UserRepository extends CrudRepository<User, Long> {
	User findByFullNameAndPassword(String fullName, String password);
	
	
    }
