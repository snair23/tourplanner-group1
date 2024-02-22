package com.expleo.PriceCal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.expleo.PriceCal.entity.User;
import com.expleo.PriceCal.repo.UserRepository;
import com.expleo.PriceCal.service.UserService;

@RestController
public class RegistrationController {

    @Autowired
    UserService service;
    
    @Autowired
    private UserRepository userRepository;
    
    @PostMapping("/checkUser")
    public boolean checkUser(@RequestParam String fullName, String password) {
        User user = userRepository.findByFullNameAndPassword(fullName, password);
        System.out.println("User value : "+user);
        return user != null;
        }
 
    @PostMapping("/register")
    public String registerUser(@ModelAttribute(name = "user") User user) {
    	System.out.println("registerUser()***");
    	
        // Perform validation if necessary
        // Save the user details to the database
        service.save(user);
        return "User registered successfully!";
    }
}
