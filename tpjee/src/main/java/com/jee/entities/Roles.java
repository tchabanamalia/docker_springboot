/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.entities;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 *
 * @author malia
 */
@Entity
@Table(name = "Roles")
public class Roles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "role_id")
    private Integer role_id;

    @Column(name = "name")
    private String name;
    
    @Column(name = "code")
    private String code;
    
    @ManyToMany(fetch = FetchType.LAZY,
      cascade = {
          CascadeType.PERSIST,
          CascadeType.MERGE
      },
      mappedBy = "roles")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Set<Users> users = new HashSet<>();
    
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Roles(String name, String code) {
        this.name = name;
        this.code = code;
    }

    public Roles(Integer role_id, String name, String code) {
        this.role_id = role_id;
        this.name = name;
        this.code = code;
    }


    public Roles(){
    
    }
    
    public Roles(String name) {
        this.name = name;
    }
    
    public void SetUsers(Set<Users> use){
        this.users = use;
    }
    
    public Integer getId() {
        return role_id;
    }

    public void setId(Integer role_id) {
        this.role_id = role_id;
    }

    public String getRolename() {
        return name;
    }

    public void setRolename(String name) {
        this.name = name;
    }
    public Set<Users> getUsers() {
        return this.users;
    }

    @Override
    public String toString() {
        return this.name;
    }    

    public String getName() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
