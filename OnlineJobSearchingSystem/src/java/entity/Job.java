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
public class Job {
    int jobId;
    int coId;
    String title;
    String description;
    String position;
    String thumbnail;
    String salary;
    String jobType;
    int categoryId;
    int status;

    public Job() {
    }

    public Job(int jobId, int coId, String title, String description, String position, String thumbnail, String salary, String jobType, int categoryId, int status) {
        this.jobId = jobId;
        this.coId = coId;
        this.title = title;
        this.description = description;
        this.position = position;
        this.thumbnail = thumbnail;
        this.salary = salary;
        this.jobType = jobType;
        this.categoryId = categoryId;
        this.status = status;
    }
}
