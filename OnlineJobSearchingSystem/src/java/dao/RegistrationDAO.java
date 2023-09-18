/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Application;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public interface RegistrationDAO {
    ArrayList<Application> getApplication(int page);
    ArrayList<Application> getApplicationFiltered(String criteriaType, String criteria, int page);
    Application getApplicationById(int applicationId);
    int changeApplicationStatus(int applicationId);
    int addApplication(Application ap);
    int editApplication(int apId, Application ap);
    int deleteApplication(int apId);
}
