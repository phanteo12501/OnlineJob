/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class Application {
    int uId;
    int appId;
    int jobId;
    String content;
    String title;
    int status;
    Date submitTime;

    public Application() {
    }

    public Application(int uId, int appId, int jobId, String content, String title, int status, Date submitTime) {
        this.uId = uId;
        this.appId = appId;
        this.jobId = jobId;
        this.content = content;
        this.title = title;
        this.status = status;
        this.submitTime = submitTime;
    }
    
}
