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
import org.datanucleus.api.jpa.annotations.Extension;

privileged aspect College_Roo_Jpa_Entity {
    
    declare @type: College: @Entity;
    
    @Id
    @Extension(vendorName = "datanucleus", key = "gae.encoded-pk", value = "true")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private String College.id;
    
    @Version
    @Column(name = "version")
    private Long College.version;
    
    public String College.getId() {
        return this.id;
    }
    
    public void College.setId(String id) {
        this.id = id;
    }
    
    public Long College.getVersion() {
        return this.version;
    }
    
    public void College.setVersion(Long version) {
        this.version = version;
    }
    
}
