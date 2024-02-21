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
import com.expleo.finalProject1.service.Packageservice;

@Controller
public class MyController {
	
	Packages p;
	
	@Autowired
	CustomService Cservice;
	
	@Autowired
	MemberService Mservice;
	
	@Autowired
	BookingService Bservice;
	
	@Autowired
	Packageservice Pservice;
	
	private int budValue,cityCount,travelCost,totalDays,memberCount,totalCost;
	private String name,Pid,bud,trans;
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
	    public String savePackages1(@RequestParam String packageName,String packageId,String budget,String transport) { 
	    	name = packageName;
	    	Pid=packageId;
	    	bud=budget;
	    	System.out.println("After input budget : "+bud);
	    	trans=transport;
	    	System.out.println("After input transport : "+trans);
	    	if (bud.equals("low") == true) {
	    		budValue = 10000;
	    		
	    	}else if(bud.equals("medium") == true) {
	    		budValue = 40000;
	    		
	    	}else {
	    		
	    		budValue = 80000;
	    	}
	    	
	    	System.out.println("After if else if budValue :"+budValue);
	    	
	    	return "addPackage2";
	    }
	 
	 @PostMapping(path = "/savePackage2")
	    public String savePackages2(@RequestParam String city,String days) { 
	    	//Packages(String packageName, String packageId, String city, String days)
	    	p = new Packages(name, Pid, city, days,trans,bud);
	    	
	    	totalDays = totalDays+(Integer.parseInt(days));
	    	cityCount++;
	    	System.out.println("After city count++"+cityCount);
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
		
		if(trans.equals("Bus") == true) {
    		travelCost = 250 * cityCount;
    	}else if(trans.equals("Car") == true) {
    		
    		travelCost = 450 * cityCount;
    	}else if(trans.equals("Train") == true) {
    		
    		travelCost = 750 * cityCount;
    	}else {
    		
    		travelCost = 1050 * cityCount;
    	}
		System.out.println("After if else if travel cost : "+travelCost);
		
		
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
		memberCount++;
		System.out.println("Member count after increment : "+memberCount);
		m.setGroupId(id);
		Mservice.save(m);
		return "addMember";
	}
	
	@PostMapping(path = "/createBooking")
	public String saveBooking(Model model) {
		//Bookings(String groupId, String packageId, String startDate)
		travelCost = travelCost * memberCount;
		budValue = budValue * memberCount;
		
		totalCost = travelCost + budValue;
		System.out.println("Travel cost : "+travelCost);
		System.out.println("Bud value : "+budValue);
		System.out.println("Total cost : "+totalCost);
		
		Bookings b = new Bookings(id, pID1, startDate1, totalCost);
		Bservice.save(b);
		model.addAttribute("savedObject", b);
		model.addAttribute("bID", id);
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
		ArrayList<Members> m= Mservice.findBygroupId(groupId);
	    String str="mem";
//		m1 = Mservice.findBygroupId(groupId);
//		
//		model.addAttribute("m1", m1);
////		b1.add(b);
//		System.out.println("group id  : "+b.getGroupId());
	    String p=Pservice.findBypackageId(b.getPackageId());
		
		model.addAttribute("gid", b.getGroupId());
//		model.addAttribute("pid", b.getPackageId());
		model.addAttribute("pname", p);
		model.addAttribute("dte", b.getStartDate());
		System.out.println("Displaying : "+b.getCost());
		model.addAttribute("cst", b.getCost());
		
		for(int i=0;i<m.size();i++)
		 {
			
			
			 model.addAttribute(str+i+"name",m.get(i).getName());
			 model.addAttribute(str+i+"gender",m.get(i).getGender());
			 model.addAttribute(str+i+"age",m.get(i).getAge());
			
		 }
		
		return "showBookedObject";
		
	}
	

}
