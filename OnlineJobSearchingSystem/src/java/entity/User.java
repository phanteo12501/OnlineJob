package entity;

import java.sql.Date;


public class User {
    int uId;
    int role;
    int coId;
    String fullName;
    String email;
    String password;
    String phone;
    String cv;
    String gender;
    Date dob;
    String address;
    int status;

    public User() {
    }

    public User(int uId, int role, int coId, String fullName, String email, String password, String phone, String cv, String gender, Date dob, String address, int status) {
        this.uId = uId;
        this.role = role;
        this.coId = coId;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.cv = cv;
        this.gender = gender;
        this.dob = dob;
        this.address = address;
        this.status = status;
    }
}

    