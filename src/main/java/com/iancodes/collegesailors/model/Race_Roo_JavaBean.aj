// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.FleetScore;
import com.iancodes.collegesailors.model.Race;
import java.util.List;

privileged aspect Race_Roo_JavaBean {
    
    public List<FleetScore> Race.getScores() {
        return this.scores;
    }
    
    public void Race.setScores(List<FleetScore> scores) {
        this.scores = scores;
    }
    
}