package com.example.demo.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Register;
import com.example.demo.repository.RegisterRepository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class RegisterManager 
{
	@Autowired
	RegisterRepository rr;
	public String saveData(Register r)
	{
		rr.save(r);
		return "Registered Successfully....!";
	}
	public String toJsonString(List<Register> list)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(list);
	}
	public String readData()
	{
		return toJsonString(rr.findAll());
	}
	public String findUsername(String username)
	{
		return toJsonString(rr.findByUsername(username));
	}
	
	public String deleteUsername(String username)
	{
		rr.deleteById(username);
		return "Account Deleted Successfully....!";
	}
	@SuppressWarnings("deprecation")
	public String loginVerify(String username,String password)
	{
		String flag="";
		if(rr.existsById(username))
		{
//			System.out.println(rr.getById(username));
			Register r=new Register();
			r=rr.getById(username);
//			System.out.println(r.getPassword());
//			System.out.println("Password : "+password);
			if(r.getPassword().equals(password))
			{
				flag="Login Verified Successfully...!";
			}
			else
			{
				flag="Invalid Password ..!";
			}
		}
		else
		{
			flag="Invalid Login Credentials...!";
		}
		return flag;
	}
	public String updateProfile(Register r,String username)
	{
		Register rg=rr.findById(username).get();
		rg.setYear(r.getYear());
		rg.setBranch(r.getBranch());
		rg.setGender(r.getGender());
		rg.setPhone(r.getPhone());
		rg.setState(r.getState());
		rr.save(rg);
		return "Profile Updated..!";
	}
	public String updateLoginProfile(Register r,String username)
	{
		Register rg=rr.findById(username).get();
		rg.setEmail(r.getEmail());
		rg.setName(r.getName());
		rg.setYear(r.getYear());
		rg.setBranch(r.getBranch());
		rg.setGender(r.getGender());
		rg.setPhone(r.getPhone());
		rg.setState(r.getState());
		rr.save(rg);
		return "Profile Updated Successfully...!";
	}
	public String updateUserProfileFromAdmin(Register r,String username)
	{
		Register rg=rr.findById(username).get();
		rg.setEmail(r.getEmail());
		rg.setName(r.getName());
		rg.setYear(r.getYear());
		rg.setBranch(r.getBranch());
		rg.setGender(r.getGender());
		rg.setPhone(r.getPhone());
		rg.setState(r.getState());
		rg.setRoles(r.getRoles());
		rr.save(rg);
		return "User Profile Updated Successfully...!";
	}
	public String updatePassword(Register r,String username)
	{
		Register rg=rr.findById(username).get();
		rg.setPassword(r.getPassword());
		rr.save(rg);
		return "Password Updated..!";
	}
}