/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


/**
 *
 * @author malia
 */
@Entity
@Table(name = "Users")
public class Users {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private Integer user_id;

    @Column(name = "username", nullable = false,  unique = true, length = 45)
    private String username;
    
    @Column(name = "email", nullable = false,  unique = true, length = 45)
    private String email;

    @Column(name = "password", unique = true)
    private String password;

    @Column(name = "enable")
    private Integer enable;
    
    @Column(name = "firstName", nullable = false,  unique = true, length = 45)
    private String firstName;
    
    @Column(name = "lastName", nullable = false,  unique = true, length = 45)
    private String lastName;
    
    @Column(name = "telephone", nullable = false,  unique = true, length = 30)
    private String telephone;
    
    @ManyToMany(fetch = FetchType.LAZY,
      cascade = {
                CascadeType.PERSIST,
          CascadeType.MERGE
      })
    @JoinTable( name = "Users_Roles",
        joinColumns = @JoinColumn( name = "user_id" ),
        inverseJoinColumns = @JoinColumn( name = "role_id" ))
    private List<Roles> roles = new ArrayList<>();

    public Users(String username, String email, String password, Integer enable, String firstName, String lastName, String telephone) {        
        this.username = username;
        this.email = email;
        this.password = password;
        this.enable = enable;
        this.firstName = firstName;
        this.lastName = lastName;
        this.telephone = telephone;
    }

    public Users(Integer user_id, String username, String email, String password, Integer enable, String firstName, String lastName, String telephone) {
        this.user_id = user_id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.enable = enable;
        this.firstName = firstName;
        this.lastName = lastName;
        this.telephone = telephone;
    }
    
    public Users(String username, String email, String password, String firstName, String lastName, String telephone) {        
        this.username = username;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.telephone = telephone;
    }

    public Users() {
    }

    
    public Users(String username, String password, Integer enable) {
        this.username = username;
        this.password = password;
        this.enable = enable;
    }
    
    
    public void addRole(Roles r) {
      this.roles.add(r);
      r.getUsers().add(this);
    }

    
    
    
    public List<Roles> getRoles() {
        return roles;
    }

    public void setRoles(List<Roles> roles) {
        this.roles = roles;
    }


    public Integer getId() {
        return user_id;
    }

    public void setId(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return "Users{" + "user_id=" + user_id + ", username=" + username + ", password=" + password + ", enable=" + enable + ", roles=" + roles + '}';
    }

    
}
