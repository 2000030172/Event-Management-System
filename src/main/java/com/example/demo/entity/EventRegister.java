package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="eventregister")
public class EventRegister 
{
	@Column(unique = true)
	String eventidusername;
	//@GeneratedValue(strategy = GenerationType.AUTO)
	//Long id;
	
	@Id
	String username;
	String ev_id;
	String yr;
	String gen;
	String email;
	String branch;
	String dc;
	
	String ev_name;
	String name;
	
	String dor;
	public String getEv_name() {
		return ev_name;
	}
	public void setEv_name(String ev_name) {
		this.ev_name = ev_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEventidusername() {
		return eventidusername;
	}
	public void setEventidusername(String eventidusername) {
		this.eventidusername = eventidusername;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEv_id() {
		return ev_id;
	}
	public void setEv_id(String ev_id) {
		this.ev_id = ev_id;
	}
	public String getYr() {
		return yr;
	}
	public void setYr(String yr) {
		this.yr = yr;
	}
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getDc() {
		return dc;
	}
	public void setDc(String dc) {
		this.dc = dc;
	}
	public String getDor() {
		return dor;
	}
	public void setDor(String dor) {
		this.dor = dor;
	}
	@Override
	public String toString() {
		return "EventRegister [eventidusername=" + eventidusername + ", username=" + username + ", ev_id=" + ev_id
				+ ", yr=" + yr + ", gen=" + gen + ", email=" + email + ", branch=" + branch + ", dc=" + dc + ", dor="
				+ dor + "]";
	}
}