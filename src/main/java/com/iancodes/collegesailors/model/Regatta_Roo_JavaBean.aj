// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.College;
import com.iancodes.collegesailors.model.Regatta;
import java.util.Date;

privileged aspect Regatta_Roo_JavaBean {
    
    public College Regatta.getHost() {
        return this.host;
    }
    
    public void Regatta.setHost(College host) {
        this.host = host;
    }
    
    public Date Regatta.getRegattaDate() {
        return this.regattaDate;
    }
    
    public void Regatta.setRegattaDate(Date regattaDate) {
        this.regattaDate = regattaDate;
    }
    
    public String Regatta.getRegattaName() {
        return this.regattaName;
    }
    
    public void Regatta.setRegattaName(String regattaName) {
        this.regattaName = regattaName;
    }
    
    public String Regatta.getBoat() {
        return this.boat;
    }
    
    public void Regatta.setBoat(String boat) {
        this.boat = boat;
    }
    
    public String Regatta.getScoring() {
        return this.scoring;
    }
    
    public void Regatta.setScoring(String scoring) {
        this.scoring = scoring;
    }
    
}