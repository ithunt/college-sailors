package com.iancodes.collegesailors.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
//@RooJpaActiveRecord
@RooJpaActiveRecord(identifierType = String.class, versionType = Long.class)
@RooJson
public class FleetScore {

    /**
     */
    private int place;
}
