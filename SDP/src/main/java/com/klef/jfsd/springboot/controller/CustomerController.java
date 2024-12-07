package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    // Registration Page
    @GetMapping("customerreg")
    public ModelAndView customerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerreg");
        return mv;
    }

    // Insert Customer
    @PostMapping("insertcustomer")
    public ModelAndView insertcustomer(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String email = request.getParameter("cemail");
        String id = request.getParameter("cid");
        String phoneNumber = request.getParameter("cphone");
        String password = request.getParameter("cpwd");

        Customer customer = new Customer();
        customer.setName(name);
        customer.setEmail(email);
        customer.setId(id);
        customer.setPhoneNumber(phoneNumber);
        customer.setPassword(password);

        String message = customerService.customerRegistration(customer);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsucess");
        mv.addObject("message", message);
        return mv;
    }

    // Login Page
    @GetMapping("customerlogin")
    public ModelAndView customerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerlogin");
        return mv;
    }

    // Check Login Credentials
    @PostMapping("checkcustomerlogin")
    public ModelAndView checkcustomerlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");
        Customer customer = customerService.checkCustomerLogin(cemail, cpwd);
        if (customer != null) {
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            mv.setViewName("customerhome");
        } else {
            mv.setViewName("customerlogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Customer Home Page
    @GetMapping("customerhome")
    public ModelAndView customerhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerhome");
        return mv;
    }

    // Customer Profile Page
    @GetMapping("customerprofile")
    public ModelAndView customerprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerprofile");
        return mv;
    }

    // Logout
    @GetMapping("customerlogout")
    public ModelAndView customerlogout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerlogin");
        return mv;
    }

    // About Page
    @GetMapping("about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("about");
        return mv;
    }

    // Duplicate About Page (if needed)
    @GetMapping("about1")
    public ModelAndView about1() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("about");
        return mv;
    }

    @PostMapping("/deleteStudent")
    public ModelAndView deleteStudent(@RequestParam("studentId") String studentId) {
        String message = customerService.deleteCustomer(studentId);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallcustomers");
        mv.addObject("message", message);
        return mv;
    }
 // Show Add Student Form
    @GetMapping("/createStudentForm")
    public ModelAndView createStudentForm() {
        ModelAndView mv = new ModelAndView("createStudentForm");
        return mv;
    }

    // Add Student Logic
    @PostMapping("/addStudent")
    public String addStudent(
        @RequestParam("id") String id,
        @RequestParam("name") String name,
        @RequestParam("email") String email,
        @RequestParam("phoneNumber") String phoneNumber,
        @RequestParam("password") String password
    ) {
        Customer customer = new Customer();
        customer.setId(id);
        customer.setName(name);
        customer.setEmail(email);
        customer.setPhoneNumber(phoneNumber);
        customer.setPassword(password);

        customerService.customerRegistration(customer);
        return "redirect:/viewallcustomers"; // Redirect to the student list page
    }


}
