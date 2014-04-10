package com.iancodes.collegesailors.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
//@RooJpaActiveRecord
@RooJpaActiveRecord(identifierType = String.class, versionType = Long.class)
@RooJson
public class Regatta {

    /**
     */
    @ManyToOne
    private College host;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date regattaDate;

    /**
     */
    private String regattaName;

    /**
     */
    private String boat;

    /**
     */
    private String scoring;
}
