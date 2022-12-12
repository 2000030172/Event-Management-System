package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Event;
import com.example.demo.manager.EventManager;

@RestController
@RequestMapping("/api")
public class EventController 
{
	@Autowired
	EventManager em;
	
	@PostMapping("/event/create")
	public String createEvent(@RequestBody Event e)
	{
		return em.saveEvent(e);
	}
	
	@GetMapping("/event/read")
	public String readEvent()
	{
		return em.readData();
	}
	
	@GetMapping("/event/read/{eventId}")
	public String readId(@PathVariable("eventId") String eventId)
	{
		return em.findEvent(eventId);
	}
	@DeleteMapping("/event/delete/{eventId}")
	public String deleteData(@PathVariable("eventId") String eventId)
	{
		return em.deleteEvent(eventId);
	}
	
	@PutMapping("/event/update/{eventId}")
	public String updateData(@RequestBody Event e,@PathVariable("eventId") String eventId)
	{
		return em.updateEvent(e,eventId).toString();
	}
}