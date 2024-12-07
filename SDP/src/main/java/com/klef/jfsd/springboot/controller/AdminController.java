package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("adminlogin")
    public ModelAndView adminlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");
        Admin admin = adminService.checkAdminLogin(auname, apwd);
        if (admin != null) {
            mv.setViewName("adminhome");
            long count = adminService.customercount();
            mv.addObject("count", count);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("adminhome")
    public ModelAndView adminhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminhome");
        return mv;
    }

    @GetMapping("viewallcustomers")
    public ModelAndView viewallcustomers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallcustomers");
        List<Customer> customers = adminService.viewAllCustomers();
        mv.addObject("customerlist", customers);
        return mv;
    }

    // Handle Manage Teams
    @GetMapping("manageteams")
    public ModelAndView showManageTeamsForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("manageteams");
        return mv;
    }

    @PostMapping("manageteams")
    public ModelAndView manageTeams(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        int numTeams = Integer.parseInt(request.getParameter("numTeams"));

        // Store the number of teams in session or request
        request.getSession().setAttribute("numTeams", numTeams);

        mv.addObject("numTeams", numTeams);
        mv.setViewName("manageteams");

        return mv;
    }

}
