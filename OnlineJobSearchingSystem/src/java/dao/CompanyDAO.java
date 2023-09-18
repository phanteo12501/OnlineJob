/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Company;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public interface CompanyDAO {
    int addCompany(Company co);
    ArrayList<Company> getAllCompany();
    ArrayList<Company> getCompanyByRating();
    Company getCompanyById(int id);
    Company getCompanyByJobId(int jobId);
    int updateCompany(int coId, Company co);
}
