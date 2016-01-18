package com.filsum.model;


import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@XmlRootElement
@Table(name = "runner")
public class Runner implements Serializable {


    // id
    private Long runnerId;

    // name of the runner
    private String forename;

    // surname
    private String surname;

    // gender of the person
    private char gender = 'w';

    // e-mail
    private String email;

    private String street;

    private String streetNumber;

    private String city;

    private String zip;

    private String country;

    @Id
    @GeneratedValue
    public Long getRunnerId() {
        return runnerId;
    }

    public void setRunnerId(Long runnerId) {
        this.runnerId = runnerId;
    }

    public String getForename() {
        return forename;
    }

    public void setForename(String forename) {
        this.forename = forename;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}