// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.College;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect College_Roo_Json {
    
    public String College.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String College.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static College College.fromJsonToCollege(String json) {
        return new JSONDeserializer<College>()
        .use(null, College.class).deserialize(json);
    }
    
    public static String College.toJsonArray(Collection<College> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String College.toJsonArray(Collection<College> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<College> College.fromJsonArrayToColleges(String json) {
        return new JSONDeserializer<List<College>>()
        .use("values", College.class).deserialize(json);
    }
    
}
