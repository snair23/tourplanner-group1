package com.expleo.finalProject1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.expleo.finalProject1.entity.Members;

import com.expleo.finalProject1.repo.MemberRepo;

@Service
public class MemberService {
	
	@Autowired
	MemberRepo repo;
	
	public Members save(Members e) {
		repo.save(e);
		return e;
	}

	public ArrayList<Members> findBygroupId(String groupId) {
		Iterable<Members> opt = repo.findAll();
		ArrayList<Members> ls = new ArrayList<Members>();
		for(Members member : opt) {
			if(member.getGroupId().equals(groupId) == true) {
				System.out.println("member service : "+member.getGroupId());
				ls.add(member);
			}
		}
		return ls;
	}

}
