// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.FleetScore;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FleetScore_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager FleetScore.entityManager;
    
    public static final List<String> FleetScore.fieldNames4OrderClauseFilter = java.util.Arrays.asList("place");
    
    public static final EntityManager FleetScore.entityManager() {
        EntityManager em = new FleetScore().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long FleetScore.countFleetScores() {
        return findAllFleetScores().size();
    }
    
    @Transactional
    public static List<FleetScore> FleetScore.findAllFleetScores() {
        return entityManager().createQuery("SELECT o FROM FleetScore o", FleetScore.class).getResultList();
    }
    
    @Transactional
    public static List<FleetScore> FleetScore.findAllFleetScores(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM FleetScore o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, FleetScore.class).getResultList();
    }
    
    @Transactional
    public static FleetScore FleetScore.findFleetScore(String id) {
        if (id == null || id.length() == 0) return null;
        return entityManager().find(FleetScore.class, id);
    }
    
    @Transactional
    public static List<FleetScore> FleetScore.findFleetScoreEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FleetScore o", FleetScore.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public static List<FleetScore> FleetScore.findFleetScoreEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM FleetScore o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, FleetScore.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
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
