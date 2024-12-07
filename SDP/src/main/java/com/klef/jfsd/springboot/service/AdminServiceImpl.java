package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class AdminServiceImpl implements AdminService{
	 
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Override
	public List<Customer> viewAllCustomers() {
		// TODO Auto-generated method stub
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		// TODO Auto-generated method stub
		return adminRepository.checkAdminLogin(uname,pwd);
	}
	@Override
	public long customercount() {
		return customerRepository.count();
	}
	
}
