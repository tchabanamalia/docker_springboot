/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.controller;

import com.jee.entities.Fonctionalites;
import com.jee.entities.Roles;
import com.jee.entities.repository.FonctionalitesRepository;
import com.jee.entities.repository.RoleRepository;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author malia
 */
@Controller
public class FonctionaliteController {
    
    @Autowired
    private FonctionalitesRepository fonctionsRepository;
    
    @Autowired
    private RoleRepository rolesRepository;
    
    
    @RequestMapping(value = "/listeFonctions", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("fonctions", fonctionsRepository.findAll());
        return "fonctions";
    }
 
    
    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public String formPage(Model model) {
        model.addAttribute("fonction", new Fonctionalites());
        model.addAttribute("roles", rolesRepository.findAll());
        return "ajoutFonctions";
    }
    
    
    @RequestMapping(value = "/AjoutFonctions", method = RequestMethod.POST)
    public String store(Model mode, HttpServletRequest request) {
        String fonction_id = request.getParameter("fonction_id");
        String code = request.getParameter("code");
        String libelle = request.getParameter("libelle");
        String role = request.getParameter("role_id");
        
        Roles r = new Roles();
        Fonctionalites fonctionSaved = new Fonctionalites();

        if (role != null || !role.isEmpty()) {
            r = rolesRepository.getById(Integer.valueOf(role));
            fonctionSaved = new Fonctionalites(code, libelle);
            fonctionSaved.setRole(r);
        }
        
        if (fonction_id == null || fonction_id.isEmpty()) {
            fonctionsRepository.save(fonctionSaved);
        } else {
            fonctionSaved = fonctionsRepository.getById(Integer.valueOf(fonction_id));
            if (fonctionSaved != null && fonctionSaved.getId() != null) {
                fonctionSaved.setCode(code);
                fonctionSaved.setLibelle(libelle);
                fonctionsRepository.save(fonctionSaved);
            }
        }
        return "redirect:/listeFonctions";
    
    }    
}
