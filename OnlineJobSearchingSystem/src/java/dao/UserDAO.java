package dao;

import entity.User;
import entity.UserRole;
import java.util.ArrayList;

public interface UserDAO {
    User login(String email, String password);
    ArrayList<UserRole> getAllStatusUserRole();
    ArrayList<User> getAllUser();
    ArrayList<User> getUserByRole(int roleId);
    User getUserById(int uId);
    int changePassword(int uId, String pass);
    int changePassword(String mail, String pass);
    boolean checkOldPass(String mail, String pass);
    boolean checkMail(String mail);
    int insertFollowJob(int uId, int jobId);
    int changeStatus(int uId);
    int addUser(User user);
    int addUserRole(UserRole userRole);
    int editUser(int uId, User user);
    int editUserRole(int urId, UserRole role);
}
  

