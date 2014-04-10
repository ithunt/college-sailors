// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.FleetScore;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FleetScore_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager FleetScore.entityManager;
    
    public static final EntityManager FleetScore.entityManager() {
        EntityManager em = new FleetScore().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long FleetScore.countFleetScores() {
        return entityManager().createQuery("SELECT COUNT(o) FROM FleetScore o", Long.class).getSingleResult();
    }
    
    public static List<FleetScore> FleetScore.findAllFleetScores() {
        return entityManager().createQuery("SELECT o FROM FleetScore o", FleetScore.class).getResultList();
    }
    
    public static FleetScore FleetScore.findFleetScore(Long id) {
        if (id == null) return null;
        return entityManager().find(FleetScore.class, id);
    }
    
    public static List<FleetScore> FleetScore.findFleetScoreEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FleetScore o", FleetScore.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void FleetScore.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void FleetScore.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            FleetScore attached = FleetScore.findFleetScore(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void FleetScore.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void FleetScore.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public FleetScore FleetScore.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        FleetScore merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}