package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Contact;
import com.example.demo.manager.ContactManager;

@RestController
@RequestMapping("/api")
public class ContactController 
{
	@Autowired
	ContactManager cm;
	@PostMapping("/insert/contact")
	public String insertContact(@RequestBody Contact c)
	{
		return cm.insertData(c);
	}
	
	@GetMapping("/details/contact")
	public String getData()
	{
		return cm.readData();
	}
}