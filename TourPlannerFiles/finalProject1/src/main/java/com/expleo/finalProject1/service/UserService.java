package com.expleo.finalProject1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Service;

import com.expleo.finalProject1.repo.UserRepository;


@Service
public class UserService {
	@Autowired
    UserRepository userRepository;
 

	public void save(com.expleo.finalProject1.entity.User user) {
		// TODO Auto-generated method stub
		 userRepository.save(user);
	}
}