/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Job;
import entity.JobCategory;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public interface JobDAO {
    ArrayList<Job> getAllJob();
    ArrayList<Job> getJobByCriteria(String criteriaType,String critera);
    ArrayList<JobCategory> getAllStatusJobCategory();
    ArrayList<Job> getAllStatusJob();
    int validateJob(int jobStatus, int jobId);
    ArrayList<Job> getJobListByUser(int uId);
    Job getJobById(int jobId);
    int addJob(Job job);
    int editJob(int adId, Job job);
    int addJobCategory(JobCategory jobCate);
    int editJobCategory(int adCateId, Job jobCate);
    int deleteJob(int adId);
}
