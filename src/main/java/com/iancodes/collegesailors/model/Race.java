package com.iancodes.collegesailors.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import java.util.List;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
//@RooJpaActiveRecord
@RooJpaActiveRecord(identifierType = String.class, versionType = Long.class)
@RooJson
public class Race {

    @OneToMany
    List<FleetScore> scores;
}
