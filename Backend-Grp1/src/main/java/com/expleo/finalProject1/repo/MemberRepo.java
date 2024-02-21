package com.expleo.finalProject1.repo;

import org.springframework.data.repository.CrudRepository;

import com.expleo.finalProject1.entity.Members;


public interface MemberRepo extends CrudRepository<Members, Integer>{

}
