package com.example.demo.manager;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.EventRegister;
import com.example.demo.repository.EventRegisterRepository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Service
public class EventRegisterManager 
{
	@Autowired
	EventRegisterRepository rr;
	public String insertData(EventRegister er)
	{
		rr.save(er);
		return "Data Inserted Successfully...!";
	}
	
	public String getData()
	{
		return toJsonString(rr.findAll());
	}
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(obj);
	}
	
	public List<EventRegister> readAll()
	{
		return rr.findAll();
	}
	
	public String readUser(String username)
	{
	    return toOptionalList(rr.findById(username)).toString();
	}
	  
	private Object toOptionalList(Optional<EventRegister> user) 
	{
		final List<EventRegister> list = user.stream().collect(Collectors.toList());
		return toJsonString(list);
	}
//
//	public String JsontoString(Optional<EventRegister> op)
//	{
//	    final List<EventRegister> list = op.stream().collect(Collectors.toList());
//	    
//	    GsonBuilder gb=new GsonBuilder();
//	    Gson g=gb.create();
//	    return g.toJson(list);
//	}
//	public int ValidRegister(String username, String eventId)
//	{
//		
//	}
}