// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.Sailor;
import com.iancodes.collegesailors.model.Team;
import java.util.Date;
import java.util.Set;

privileged aspect Team_Roo_JavaBean {
    
    public Date Team.getCreated() {
        return this.created;
    }
    
    public void Team.setCreated(Date created) {
        this.created = created;
    }
    
    public Set<Sailor> Team.getSailors() {
        return this.sailors;
    }
    
    public void Team.setSailors(Set<Sailor> sailors) {
        this.sailors = sailors;
    }
    
}
