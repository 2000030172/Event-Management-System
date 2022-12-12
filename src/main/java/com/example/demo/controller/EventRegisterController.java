package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.EventRegister;
import com.example.demo.manager.EventRegisterManager;


@RestController
@RequestMapping("/api")
public class EventRegisterController 
{
	@Autowired
	EventRegisterManager erm;
	
	@PostMapping("/insert/event-register")
	public String insertData(@RequestBody EventRegister er)
	{
		return erm.insertData(er).toString();
	}
	
	@GetMapping("/details/event-register")
	public String displayData()
	{
		return erm.getData();
	}
	
	@GetMapping("/registered/event-register")
	public String registeredData()
	{
		return erm.readAll().toString();
	}
	
	@GetMapping("/details/event-register/{username}")
	public String displayUser(@PathVariable("username") String username)
	{
		return erm.readUser(username);
	}
}