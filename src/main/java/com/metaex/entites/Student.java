package com.metaex.entites;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

 
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name ="students")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    
    @Column(name="first_name",nullable=false,length=45)
    private String firstName;
    @Column(name="last_name",nullable=false,length=45)
    private String lastName;
    
    private Date dob; 
    
    private String gender;
    
    @Column(name="email",nullable=false)
    private String email;
    
    @Column(name="mobile",nullable=false)
    private long mobile; 
    
    private String qualification;
}