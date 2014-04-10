// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.collegesailors.model;

import com.iancodes.collegesailors.model.Fleet;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Fleet_Roo_Json {
    
    public String Fleet.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public String Fleet.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    
    public static Fleet Fleet.fromJsonToFleet(String json) {
        return new JSONDeserializer<Fleet>().use(null, Fleet.class).deserialize(json);
    }
    
    public static String Fleet.toJsonArray(Collection<Fleet> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static String Fleet.toJsonArray(Collection<Fleet> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Fleet> Fleet.fromJsonArrayToFleets(String json) {
        return new JSONDeserializer<List<Fleet>>().use(null, ArrayList.class).use("values", Fleet.class).deserialize(json);
    }
    
}
