package com.example.demo.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Event;
import com.example.demo.repository.EventRepository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
@Service
public class EventManager 
{
	@Autowired
	EventRepository er;
	
	public String saveEvent(Event e)
	{
		er.save(e);
		return "Event Created Successfully...!";
	}
	
	public String toJsonString(List<Event> list)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(list);
	}
	
	public String readData()
	{
		return toJsonString(er.findAll());
	}
	
	public String findEvent(String eventId)
	{
		return toJsonString(er.findByEventId(eventId));
	}
	
	public String deleteEvent(String eventId)
	{
		er.deleteById(eventId);
		return "Event Deleted Successfully....!";
	}
	
	public String updateEvent(Event e,String eventId)
	{
		Event ev=er.findById(eventId).get();
		ev.setDoc(e.getDoc());
		ev.setDor(e.getDor());
		ev.setInfo(e.getInfo());
		ev.setName(e.getName());
		ev.setTc(e.getTc());
		ev.setTr(e.getTr());
		ev.setLocation(e.getLocation());
		er.save(ev);
		return "Updated Successfully...!";
	}
}
