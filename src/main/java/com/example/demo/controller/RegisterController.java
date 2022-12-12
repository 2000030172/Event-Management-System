package com.example.demo.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.HttpServerErrorException;

import com.example.demo.entity.Register;
import com.example.demo.manager.RegisterManager;
import com.example.demo.role.Role;

@RestController
@RequestMapping("/api")
public class RegisterController 
{
	@Autowired
	RegisterManager rm;
	@PostMapping("/register")
	public String insertData(@RequestBody Register r)
	{
		r.setRoles(Role.USER);
		return rm.saveData(r);
	}
	
	@PostMapping("/register/organiser")
	public String insertOrganiser(@RequestBody Register r)
	{
		r.setRoles(Role.ORGANISER);
		return rm.saveData(r);
	}
	
	@PostMapping("/register/admin")
	public String insertAdmin(@RequestBody Register r)
	{
		r.setRoles(Role.ADMIN);
		return rm.saveData(r);
	}
	
	@GetMapping("/register/details")
	public String readEvent()
	{
		return rm.readData();
	}
	
	@GetMapping("/register/details/{username}")
	public String readUsername(@PathVariable("username") String username)
	{
		return rm.findUsername(username);
	}
	
	@PostMapping("/login/{username}/{password}")
	public String loginUsername(HttpServletRequest request, @PathVariable("username") String username, @PathVariable("password") String password)
	{
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		return rm.loginVerify(username, password);
	}
	
	@PutMapping("/profile/{username}")
	public String updateProfiled(@RequestBody Register r, @PathVariable("username") String username)
	{
		return rm.updateProfile(r,username).toString();
	}
	
	@PutMapping("/profile/login/{username}")
	public String updateLoginProfiled(@RequestBody Register r, @PathVariable("username") String username)
	{
		return rm.updateProfile(r,username).toString();
	}
	
	@PutMapping("/password/{username}")
	public String updatePassword(@RequestBody Register r, @PathVariable("username") String username)
	{
		return rm.updatePassword(r,username).toString();
	}
	
	@PutMapping("/profile/update/admin/{username}")
	public String updateUserProfileAdmin(@RequestBody Register r,@PathVariable("username") String username)
	{
		return rm.updateUserProfileFromAdmin(r, username).toString();
	}
	
	@DeleteMapping("/profile/delete/admin/{username}")
	public String deleteAccountAdmin(@PathVariable("username") String username)
	{
		return rm.deleteUsername(username).toString();
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:http://localhost:8080/";
	}
}