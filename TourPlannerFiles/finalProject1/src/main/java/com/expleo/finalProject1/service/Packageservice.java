package com.expleo.finalProject1.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.expleo.finalProject1.entity.Bookings;
import com.expleo.finalProject1.entity.Packages;
import com.expleo.finalProject1.repo.BookingRepo;
import com.expleo.finalProject1.repo.PackageRepo;
 
@Service
public class Packageservice {
	@Autowired
	PackageRepo PRepo;
	
	public void save(Packages p) {
		PRepo.save(p);
	}
 
	public String findBypackageId(String packageId) {
	
		   
//		Packages pack = PRepo.findByPackageId(packageId);
//		
//	    if (pack != null) {
//	    	System.out.println("**"+ pack.getPackageName());
//	        return pack.getPackageName();
//	    }
//	    return null;
		
		
//		
		Iterable<Packages> opt = PRepo.findAll();
		
	for (Packages pack : opt) {
			if(pack.getPackageId().equals(packageId)==true)
			{
				System.out.println("**"+ pack.getPackageName());
				return pack.getPackageName();
			}		
	
		}
	return null;
		
		
		
	}
	
}
