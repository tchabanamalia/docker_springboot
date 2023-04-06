/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.entities.repository;

import com.jee.entities.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author malia
 */
@Repository
public interface RoleRepository extends JpaRepository<Roles, Integer> {

    public Roles findByName(String user);
    
}
