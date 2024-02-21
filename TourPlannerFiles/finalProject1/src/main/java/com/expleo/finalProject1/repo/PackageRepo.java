package com.expleo.finalProject1.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.expleo.finalProject1.entity.Packages;
 
 
 
public interface PackageRepo extends JpaRepository<Packages, Integer> {
 
	Packages findByPackageId(String packageId);
	
 
}
