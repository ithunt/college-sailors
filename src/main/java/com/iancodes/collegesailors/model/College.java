package com.iancodes.collegesailors.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
//@RooJpaActiveRecord
@RooJpaActiveRecord(identifierType = String.class, versionType = Long.class)
@RooJson
public class College {

    /**
     */
    private String collegeName;

    /**
     */
    private String burgee;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Sailor> sailors = new HashSet<Sailor>();
}
