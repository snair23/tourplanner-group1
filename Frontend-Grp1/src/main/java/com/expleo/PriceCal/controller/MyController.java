package com.expleo.PriceCal.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {
	
	@GetMapping(path = "/userinput")
	public String userinput() {
		return "userinput";
		
	}
	@GetMapping(path = "/login")
	public String login() {
		return "login";
		
	}
	@GetMapping(path = "/showBooking")
	public String showBooking() {
		return "showBooking";
		
	}
	@GetMapping(path = "/bookingPage")
	public String bookingPage() {
		return "bookingPage";
		
	}
	@GetMapping(path = "/addPackage2")
	public String addPackage2() {
		return "addPackage2";
		
	}
	@GetMapping(path = "/addPackage1")
	public String addPackage1() {
		return "addPackage1";
		
	}
	@GetMapping(path = "/addMember")
	public String addMember() {
		return "addMember";
		
	}
	
	@GetMapping(path = "/registration")
	public String registration() {
		return "registration";
		
	}

}
