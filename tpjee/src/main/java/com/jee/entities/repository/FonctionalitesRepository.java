/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.entities.repository;

import com.jee.entities.Fonctionalites;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author malia
 */
@Repository
public interface FonctionalitesRepository extends JpaRepository<Fonctionalites, Integer> {
    
}
