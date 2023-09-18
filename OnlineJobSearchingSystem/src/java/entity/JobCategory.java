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
public class JobCategory {
    int jobCateId;
    String jobCateName;
    String jobCateDescription;
    int status;

    public JobCategory() {
    }

    public JobCategory(int jobCateId, String jobCateName, String jobCateDescription, int status) {
        this.jobCateId = jobCateId;
        this.jobCateName = jobCateName;
        this.jobCateDescription = jobCateDescription;
        this.status = status;
    }
}
