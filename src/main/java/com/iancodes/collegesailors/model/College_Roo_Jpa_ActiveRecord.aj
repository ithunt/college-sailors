// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.College;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect College_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager College.entityManager;
    
    public static final List<String> College.fieldNames4OrderClauseFilter = java.util.Arrays.asList("collegeName", "burgee", "sailors");
    
    public static final EntityManager College.entityManager() {
        EntityManager em = new College().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long College.countColleges() {
        return findAllColleges().size();
    }
    
    @Transactional
    public static List<College> College.findAllColleges() {
        return entityManager().createQuery("SELECT o FROM College o", College.class).getResultList();
    }
    
    @Transactional
    public static List<College> College.findAllColleges(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM College o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, College.class).getResultList();
    }
    
    @Transactional
    public static College College.findCollege(String id) {
        if (id == null || id.length() == 0) return null;
        return entityManager().find(College.class, id);
    }
    
    @Transactional
    public static List<College> College.findCollegeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM College o", College.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public static List<College> College.findCollegeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM College o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, College.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void College.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void College.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            College attached = College.findCollege(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void College.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void College.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public College College.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        College merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
