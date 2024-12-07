package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class TeamSelectionController {

    @GetMapping("teamselection")
    public ModelAndView teamSelection(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        // Retrieve the number of teams set by the admin from the session
        Integer numTeams = (Integer) session.getAttribute("numTeams");

        // If the number of teams is set, pass it to the view
        if (numTeams != null) {
            mv.addObject("numTeams", numTeams);
        } else {
            mv.addObject("message", "Teams not set by Admin yet");
        }

        mv.setViewName("teamselection");
        return mv;
    }
}
