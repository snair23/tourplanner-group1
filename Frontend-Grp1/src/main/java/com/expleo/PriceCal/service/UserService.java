package com.expleo.PriceCal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Service;

import com.expleo.PriceCal.repo.UserRepository;

@Service
public class UserService {
	@Autowired
    UserRepository userRepository;
 

	public void save(com.expleo.PriceCal.entity.User user) {
		// TODO Auto-generated method stub
		 userRepository.save(user);
	}
}
