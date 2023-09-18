/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author admin
 */
public class Company {
    int coId;
    String name;
    String address;
    String mail;
    String phone;
    String description;
    int rating;
    int status;

    public Company() {
    }

    public Company(int coId, String name, String address, String mail, String phone, String description, int rating, int status) {
        this.coId = coId;
        this.name = name;
        this.address = address;
        this.mail = mail;
        this.phone = phone;
        this.description = description;
        this.rating = rating;
        this.status = status;
    }
}
