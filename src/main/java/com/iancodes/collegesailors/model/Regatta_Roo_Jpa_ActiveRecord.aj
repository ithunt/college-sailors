// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.Regatta;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Regatta_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Regatta.entityManager;
    
    public static final List<String> Regatta.fieldNames4OrderClauseFilter = java.util.Arrays.asList("host", "regattaDate", "regattaName", "boat", "scoring");
    
    public static final EntityManager Regatta.entityManager() {
        EntityManager em = new Regatta().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long Regatta.countRegattas() {
        return findAllRegattas().size();
    }
    
    @Transactional
    public static List<Regatta> Regatta.findAllRegattas() {
        return entityManager().createQuery("SELECT o FROM Regatta o", Regatta.class).getResultList();
    }
    
    @Transactional
    public static List<Regatta> Regatta.findAllRegattas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Regatta o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Regatta.class).getResultList();
    }
    
    @Transactional
    public static Regatta Regatta.findRegatta(String id) {
        if (id == null || id.length() == 0) return null;
        return entityManager().find(Regatta.class, id);
    }
    
    @Transactional
    public static List<Regatta> Regatta.findRegattaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Regatta o", Regatta.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public static List<Regatta> Regatta.findRegattaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Regatta o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Regatta.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void Regatta.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Regatta.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Regatta attached = Regatta.findRegatta(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Regatta.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Regatta.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Regatta Regatta.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Regatta merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
