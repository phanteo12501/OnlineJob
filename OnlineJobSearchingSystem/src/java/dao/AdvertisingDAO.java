/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Advertisement;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public interface AdvertisingDAO {
    ArrayList<Advertisement> getAdvertisementList();
    Advertisement getAdvertisementById(int adId);
    ArrayList<Advertisement> getAllStatusAdvertisement();
    void validateAdvertisement(int status, int adId);
    int addAdvertisement(Advertisement ad);
    int editAdvertisement(int adId, Advertisement ad);
    int deleteAdvertisement(int adId);
}
