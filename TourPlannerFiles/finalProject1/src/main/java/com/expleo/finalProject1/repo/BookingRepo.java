package com.expleo.finalProject1.repo;

import org.springframework.data.repository.CrudRepository;

import com.expleo.finalProject1.entity.Bookings;


public interface BookingRepo extends CrudRepository<Bookings, Integer>{

}
