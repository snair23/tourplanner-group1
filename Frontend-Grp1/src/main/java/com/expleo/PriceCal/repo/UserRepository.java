package com.expleo.PriceCal.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.expleo.PriceCal.entity.User;

public interface UserRepository extends CrudRepository<User, Long> {
	User findByFullNameAndPassword(String fullName, String password);
	
	
    }

