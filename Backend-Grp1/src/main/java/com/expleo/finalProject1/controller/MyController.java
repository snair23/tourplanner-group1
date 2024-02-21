package com.expleo.finalProject1.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.expleo.finalProject1.entity.Bookings;
import com.expleo.finalProject1.entity.Members;
import com.expleo.finalProject1.entity.Packages;
import com.expleo.finalProject1.service.BookingService;
import com.expleo.finalProject1.service.CustomService;
import com.expleo.finalProject1.service.MemberService;

@Controller
public class MyController {
	
	Packages p;
	
	@Autowired
	CustomService Cservice;
	
	@Autowired
	MemberService Mservice;
	
	@Autowired
	BookingService Bservice;
	
	private String name,Pid;
	private String id, startDate1, pID1;
	
	@GetMapping(path = "/")
	public String indexShow() {
		return "index";
		
	}
	
	@GetMapping(path = "/booking")
	public String bookMembers() {
		
		return "bookingPage";
		
	}
	
	 @PostMapping(path = "/savePackage1")
	    public String savePackages1(@RequestParam String packageName,String packageId) { 
	    	name = packageName;
	    	Pid=packageId;
	    	return "addPackage2";
	    }
	 
	 @PostMapping(path = "/savePackage2")
	    public String savePackages2(@RequestParam String city,String days) { 
	    	//Packages(String packageName, String packageId, String city, String days)
	    	p = new Packages(name, Pid, city, days);
	    	Cservice.save(p);
	    	return "addPackage2";
	    }
	 
	 @GetMapping(path = "/addMember")
		public String addMembersMethod() {
			
			return "addMember";
			
		}
	
	 @GetMapping(path = "/addPackage")
	    public String addPackages() {
	        return "addPackage1"; // Return the view name (addPackage.jsp)
	    }
	
	@PostMapping(path = "/saveBooking1")
	public String book1(@RequestParam String startDate,String pID) {
		pID1 = pID;
		startDate1 = startDate;
		
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/expleo", "root", "root123")){  //because connection is established in () after try con.close() is automatically done and no need to be written
			Statement st = con.createStatement();
			ResultSet rs1 = st.executeQuery("SELECT group_id FROM members ORDER BY serial_num DESC LIMIT 1;");
			rs1.next();
			id= rs1.getString(1);
			
			int intValue = Integer.parseInt(id);
			intValue++;
			id = Integer.toString(intValue);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "addMember";
		
	}
	
	@PostMapping(path = "/saveMember")
	public String saveMember(@ModelAttribute(name = "members") Members m) {
		
		m.setGroupId(id);
		Mservice.save(m);
		return "addMember";
	}
	
	@PostMapping(path = "/createBooking")
	public String saveBooking(Model model) {
		//Bookings(String groupId, String packageId, String startDate)
		Bookings b = new Bookings(id, pID1, startDate1);
		Bservice.save(b);
		model.addAttribute("savedObject", b);
		return "showBooking";
		
	}
	
	@GetMapping(path = "/checkBookingForm")
	public String bookingSearch1() {
		return "checkBookingFormInput";
		
	}
	
	@GetMapping(path = "/checkBooking")           //@GetMapping(path = "empForm")
	public String bookingSearch(@RequestParam String groupId,Model model) {
//		ArrayList<Members> m1 = new ArrayList<>();
//		
		Bookings b = Bservice.findBygroupId(groupId);
//		m1 = Mservice.findBygroupId(groupId);
//		
//		model.addAttribute("m1", m1);
////		b1.add(b);
//		System.out.println("group id  : "+b.getGroupId());
		
		model.addAttribute("gid", b.getGroupId());
		model.addAttribute("pid", b.getPackageId());
		model.addAttribute("dte", b.getStartDate());
		return "showBookedObject";
		
	}
	

}
