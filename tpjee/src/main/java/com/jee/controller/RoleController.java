/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.controller;

import com.jee.entities.Roles;
import com.jee.entities.Users;
import com.jee.entities.repository.RoleRepository;
import com.jee.entities.repository.UserRepository;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author malia
 */
@RequestMapping(value = "roles")
@Controller
public class RoleController {
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RoleRepository roleRepository;


    @RequestMapping(value = "/roles", method = RequestMethod.GET)
    public String Roles(Model model){
        List<Roles> roles = roleRepository.findAll();
        model.addAttribute("roles", roles);
        return "roles";
    }
    
    
    @RequestMapping(value = "/createRole", method = RequestMethod.GET)
    public String Enregistrement(Model model){
        List<Roles> roles = roleRepository.findAll();
        model.addAttribute("roles", roles);
        return "roles/ajout";
    }
    

    @RequestMapping(value = "/storeRole", method = RequestMethod.POST)
    public String storeRole(Model mode, HttpServletRequest request) {
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        Roles role = new Roles(code, name);            
       
        roleRepository.save(role);
        return "redirect:/roles";
    }
    



}