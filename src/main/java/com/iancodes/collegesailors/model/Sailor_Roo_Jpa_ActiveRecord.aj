// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.Sailor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Sailor_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Sailor.entityManager;
    
    public static final List<String> Sailor.fieldNames4OrderClauseFilter = java.util.Arrays.asList("sailorName", "graduationYear");
    
    public static final EntityManager Sailor.entityManager() {
        EntityManager em = new Sailor().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long Sailor.countSailors() {
        return findAllSailors().size();
    }
    
    @Transactional
    public static List<Sailor> Sailor.findAllSailors() {
        return entityManager().createQuery("SELECT o FROM Sailor o", Sailor.class).getResultList();
    }
    
    @Transactional
    public static List<Sailor> Sailor.findAllSailors(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sailor o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sailor.class).getResultList();
    }
    
    @Transactional
    public static Sailor Sailor.findSailor(String id) {
        if (id == null || id.length() == 0) return null;
        return entityManager().find(Sailor.class, id);
    }
    
    @Transactional
    public static List<Sailor> Sailor.findSailorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Sailor o", Sailor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public static List<Sailor> Sailor.findSailorEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sailor o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sailor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void Sailor.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Sailor.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Sailor attached = Sailor.findSailor(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Sailor.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Sailor.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Sailor Sailor.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Sailor merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
