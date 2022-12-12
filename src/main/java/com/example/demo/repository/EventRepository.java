package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Event;
@Repository
public interface EventRepository extends JpaRepository<Event, String> 
{
	List<Event> findByEventId(String eventId);
	String deleteByEventId(String eventId);
}