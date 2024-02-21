package com.expleo.finalProject1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expleo.finalProject1.entity.Packages;
import com.expleo.finalProject1.repo.CustomRepo;


@Service
public class CustomService {
	
	@Autowired
	CustomRepo repo;
	
	public void save(Packages p) {
		repo.save(p);
	}

}
