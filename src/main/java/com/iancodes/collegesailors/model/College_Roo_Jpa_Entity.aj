// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.College;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect College_Roo_Jpa_Entity {
    
    declare @type: College: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long College.id;
    
    @Version
    @Column(name = "version")
    private Integer College.version;
    
    public Long College.getId() {
        return this.id;
    }
    
    public void College.setId(Long id) {
        this.id = id;
    }
    
    public Integer College.getVersion() {
        return this.version;
    }
    
    public void College.setVersion(Integer version) {
        this.version = version;
    }
    
}
