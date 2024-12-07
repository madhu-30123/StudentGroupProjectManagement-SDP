package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;
@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public String customerRegistration(Customer customer) { 
		customerRepository.save(customer);
		return "Customer Register Sucesfully";
		
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) {
		// TODO Auto-generated method stub
		return customerRepository.checkCustomerLogin(email, password);
	}
	  

	public String deleteCustomer(String id) {
	    if (customerRepository.existsById(id)) { // Check if the ID exists
	        customerRepository.deleteById(id); // Delete the customer
	        return "Customer deleted successfully.";
	    } else {
	        return "Customer not found.";
	    }
	}
	



}
