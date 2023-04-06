/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jee.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author malia
 */
@Entity
public class Fonctionalites implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fonction_id")
    private Integer fonction_id;
    
    @Column(name = "code")
    private String code;
    
    @Column(name = "libelle")
    private String libelle;

    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "role_id")
    private Roles role;
      

    public Integer getId() {
        return fonction_id;
    }

    public void setId(Integer id) {
        this.fonction_id = id;
    }

    public Integer getFonction_id() {
        return fonction_id;
    }

    public void setFonction_id(Integer fonction_id) {
        this.fonction_id = fonction_id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public Roles getRole() {
        return role;
    }

    public void setRole(Roles role) {
        this.role = role;
    }

    public Fonctionalites() {
    }

    public Fonctionalites(String code, String libelle) {
        this.code = code;
        this.libelle = libelle;
    }

    public Fonctionalites(Integer fonction_id, String code, String libelle, Roles role) {
        this.fonction_id = fonction_id;
        this.code = code;
        this.libelle = libelle;
        this.role = role;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (fonction_id != null ? fonction_id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Fonctionalites)) {
            return false;
        }
        Fonctionalites other = (Fonctionalites) object;
        if ((this.fonction_id == null && other.fonction_id != null) || (this.fonction_id != null && !this.fonction_id.equals(other.fonction_id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jee.entities.Fonctionalite[ id=" + fonction_id + " ]";
    }
    
}
