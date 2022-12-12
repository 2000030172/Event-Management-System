package com.example.demo.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Contact;
import com.example.demo.repository.ContactRepository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class ContactManager 
{
	@Autowired
	ContactRepository cr;
	
	public String insertData(Contact c)
	{
		cr.save(c);
		return "Query Created...!";
	}
	
	public String readData()
	{
		return toJsonString(cr.findAll());
	}
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(obj);
	}
}