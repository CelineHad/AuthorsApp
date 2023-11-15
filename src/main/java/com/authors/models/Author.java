package com.authors.models;

import com.authors.enums.FieldOfStudy;

import java.util.Date;

public class Author {
    private int id;
    private String name;
    private String email;
    private Date birthdate;
    private int numOfArticles;
    private FieldOfStudy fieldOfStudy;

    public Author(int id, String name, String email, Date birthdate, int numOfArticles, FieldOfStudy fieldOfStudy) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.birthdate = birthdate;
        this.numOfArticles = numOfArticles;
        this.fieldOfStudy = fieldOfStudy;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthdate() {
        return birthdate;
   }

    public void setBirthdate(Date birthdate) {
       this.birthdate = birthdate;
   }

    public int getNumOfArticles() {
        return numOfArticles;
    }

    public void setNumOfArticles(int numOfArticles) {
        this.numOfArticles = numOfArticles;
    }

    public FieldOfStudy getFieldOfStudy() {
        return fieldOfStudy;
    }

    public void setFieldOfStudy(FieldOfStudy fieldOfStudy) {
        this.fieldOfStudy = fieldOfStudy;
    }
}
