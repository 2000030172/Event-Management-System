package com.example.demo.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.EventRegister;

@Repository
public interface EventRegisterRepository extends JpaRepository<EventRegister,String> 
{
	
}