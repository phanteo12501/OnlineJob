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
public class Advertisement {
    int id;
    String address;
    String thumbnail;
    String content;
    String title;
    int status;

    public Advertisement(int id, String address, String thumbnail, String content, String title, int status) {
        this.id = id;
        this.address = address;
        this.thumbnail = thumbnail;
        this.content = content;
        this.title = title;
        this.status = status;
    }

    public Advertisement() {
    }
}
