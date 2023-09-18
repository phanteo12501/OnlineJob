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
public class UserRole {
    int userRoleId;
    String userRole;
    int status;

    public UserRole() {
    }

    public UserRole(int userRoleId, String userRole, int status) {
        this.userRoleId = userRoleId;
        this.userRole = userRole;
        this.status = status;
    }
    
}
