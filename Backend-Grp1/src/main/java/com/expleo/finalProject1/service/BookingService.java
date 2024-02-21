package com.expleo.finalProject1.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expleo.finalProject1.entity.Bookings;
import com.expleo.finalProject1.repo.BookingRepo;

@Service
public class BookingService {
	@Autowired
	BookingRepo BRepo;
	 
	public void save(Bookings b) {
		BRepo.save(b);
	}

	public Bookings findBygroupId(String groupId) {
		
		Iterable<Bookings> opt = BRepo.findAll();
		for (Bookings booking : opt) {
		    if (booking.getGroupId().equals(groupId) == true) {
		    	System.out.println("Booking service : "+booking);
		        // Add the booking to the filtered list
		        return booking;
		    }
		}
		return null;
	}
	

}
