package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.example.demo.entity.*;
@RestController
@RequestMapping("/api")
public class ComplaintController 
{
	String port="http://localhost:1265/";
	
	String url,result;
	
	@Autowired
	RestTemplate rt=new RestTemplate();
	
	@PostMapping("/insertComplaint")
	public String insertComplaint(@RequestBody Complient c)
	{
		url=port+"api/insert-complaint";
		return rt.postForObject(url,c,String.class);
	}
	
	@GetMapping("/details-complaint")
	public String detailsComplaint()
	{
		url=port+"api/details-complaint";
		return rt.getForObject(url,String.class);
	}
	
	@GetMapping("/details-complaint/{username}")
	public String detailsUser(@PathVariable("username") String username)
	{
		url=port+"api/details-complaint/"+username;
		return rt.getForObject(url,String.class);
	}
}