package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService {
	String deleteCustomer(String studentId);
	

	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password );

}
