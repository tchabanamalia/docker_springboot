/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.controller;

import com.jee.entities.Fonctionalites;
import com.jee.entities.Roles;
import com.jee.entities.Users;
import com.jee.entities.repository.FonctionalitesRepository;
import com.jee.entities.repository.RoleRepository;
import com.jee.entities.repository.UserRepository;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author malia
 */
@Controller
@RequestMapping("/")
public class UserController {
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RoleRepository roleRepository;
    
    @Autowired
    private FonctionalitesRepository fonctionsRepos;
      
     
    @GetMapping("/users")
    public String listUsers(Model model) {
        List<Users> listUsers = userRepository.findAll();
        model.addAttribute("listUsers", listUsers);    
        return "users/users";
    }
    
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String Register(Model model){
        return "register";
    }
    
    
    @PostMapping("store")
    public String StoreUser(HttpServletRequest request, HttpServletResponse response, Model model){
        String username = request.getParameter("username");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Integer enable = 0;
        Users user = new Users(username, email, password, enable, firstName, lastName, telephone);            

        //Users user =new Users(nom, prenom, telephone, email, username, password, enable);
        userRepository.save(user);
        return "redirect:/";
    }
    
    
    @GetMapping("addUser")
    public String create(Model model){
        model.addAttribute("roles", roleRepository.findAll());
        return "users/addUser";
    }
    
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Code d'utilisateur ou mot de passe invalide.");
        }
        if (logout != null) {
            model.addAttribute("message", "Vous avez été déconnecté avec succès!");
        }
        return "login";
    }
    
    
    @RequestMapping(value = "/storeUser", method = RequestMethod.POST)
    public String store(HttpServletRequest request, HttpServletResponse response, Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Integer enable = Integer.parseInt(request.getParameter("enable"));        
        String firstName = request.getParameter("firstName");
        String email = request.getParameter("email");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone"); 
        String[] tabRoles = request.getParameterValues("role[]");

        Set<Roles> roles = new HashSet<>();
        for(String elt : tabRoles) {
            System.out.println(elt);
            Integer id = Integer.parseInt(elt);
            roles.add(roleRepository.getById(id));    
        }              
        Users user = new Users(username, email, password, enable, firstName, lastName, telephone);            
        
        System.out.println(user);
        user.setRoles((List<Roles>) roles);
        userRepository.save(user);
        //return "redirect:/users";
        return this.create(model);
    }
    
    
   
    /* @RequestMapping(value = "/store", method = RequestMethod.POST)
        public String StoreUser(HttpServletRequest request, HttpServletResponse response, Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String email = request.getParameter("email");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone");        
        
        Users user = new Users(username,  email, password,  firstName, lastName, telephone);            
        
        Roles roleUser = roleRepository.findByName("Candidat");
        user.addRole(roleUser);               
        
        userRepository.save(user);
        return "redirect:/login";
    
    
    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser(Model model){
        List<Roles> roles = roleRepository.findAll();
        model.addAttribute("roles", roles);
        return "addUser";
    }
    
    }*/
    
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewPage(Model model){
        return "login";
    }
    
    @RequestMapping(value = "/indexPage", method = RequestMethod.GET)
    public String viewPageIndex(Model model){
        return "index";
    }
    
   /* @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String LoginPage(Model model){
        return "login";
    } */
    
    
   
    
    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public String Login(Model model, HttpServletRequest request, @ModelAttribute("users") @Validated Users users){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(users);
        System.out.println("Utilisateur : " + username);
        System.out.println("Password : " + password);
        String un = "1";
        System.out.println("Enable : " + un);

        List<Users> utilisateurs = userRepository.findAll();
        System.out.println("utilisateurs : " + utilisateurs);
        
        for (Users u : utilisateurs){            
            if(u.getUsername().equals(username) && u.getPassword().equals(password)) {
                if (u.getEnable().equals(un)) {
                    return "redirect:/indexPage";                   
                }else{
                    return "redirect:/login";
                }                
            }else {
                return "redirect:/indexPage";
            }
        }
        return "redirect:/";
        }  
    
    
    @RequestMapping(value = "/profil", method = RequestMethod.GET)
    public String profil(Model model){
        List<Users> listUsers = userRepository.findAll();
        model.addAttribute("listUsers", listUsers); 
        return "profile";
    }
    
    
    @RequestMapping(value = "/back", method = RequestMethod.GET)
    public String back(Model model){
        List<Users> listUsers = userRepository.findAll();
        model.addAttribute("listUsers", listUsers);  
        return "users";
    }
    
    
    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public String show(Model model, HttpServletRequest request){
        Users u = userRepository.getById(Integer.parseInt(request.getParameter("user_id")));
        model.addAttribute("user", u);
        List<Users> listUsers = userRepository.findAll();
        model.addAttribute("listUsers", listUsers);  
        return "show";
    }
    
    
    @GetMapping("/fonctions")
    public String listFonctions(Model model) {
        model.addAttribute("fonctions", fonctionsRepos.findAll());
        return "fonctions";
    }
    
    
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String EditUser(Model model, HttpServletRequest request){
        Users u = userRepository.getById(Integer.parseInt(request.getParameter("user_id")));
        model.addAttribute("user", u);
        List<Roles> roles = roleRepository.findAll();
        model.addAttribute("roles", roles);
        return "update";
    }
        
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String UpdateUser(Model model, HttpServletRequest request, @ModelAttribute("users") @Validated Users users){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Integer enable = Integer.parseInt(request.getParameter("enable"));        
        String firstName = request.getParameter("firstName");
        String email = request.getParameter("email");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone"); 
        
        Users u = userRepository.getById(Integer.parseInt(request.getParameter("user_id")));
        
        System.out.println(request.getParameter("username"));
        
        u.setUsername(username);
        u.setEmail(email);
        u.setPassword(password);        
        u.setEnable(enable);                       
        u.setFirstName(firstName);
        u.setLastName(lastName);
        u.setTelephone(telephone);
          
        for (int i = 0; i < users.getRoles().size(); i++){
            u.addRole(users.getRoles().get(i));
        }                               
        
        userRepository.save(u);
        
        return "redirect:/users";
    }
    
     
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String DeleteUser(Model model, @ModelAttribute("users") @Validated Users users){
        userRepository.deleteById(users.getId());
        return "redirect:/users";
    }
    
    
   
    
    
  
}
