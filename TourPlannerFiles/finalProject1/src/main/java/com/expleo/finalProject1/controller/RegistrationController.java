package com.expleo.finalProject1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.expleo.finalProject1.entity.User;
import com.expleo.finalProject1.repo.UserRepository;
import com.expleo.finalProject1.service.UserService;

@RestController
public class RegistrationController {

    @Autowired
    UserService service;
    
//    @Autowired
//    private UserRepository userRepository;
    
    
 
    @PostMapping("/register")
    public String registerUser(@ModelAttribute(name = "user") User user) {
    	System.out.println("registerUser()***");
    	
        // Perform validation if necessary
        // Save the user details to the database
        service.save(user);
        return "User registered successfully!";
    }
}