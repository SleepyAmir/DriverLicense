package com.sleepy.driverlicenses.service;

import com.sleepy.driverlicenses.entity.DriverLicense;
import com.sleepy.driverlicenses.repository.DriverLicenseRepository;

import javax.swing.*;
import java.util.List;

public class DriverLicenseService {


    public DriverLicense save(DriverLicense driverLicense) throws Exception{
        try (DriverLicenseRepository driverLicenseRepository = new DriverLicenseRepository()) {
            return driverLicenseRepository.save(driverLicense);

        }
    }

    public DriverLicense edit(DriverLicense driverLicense) throws Exception{
        try (DriverLicenseRepository driverLicenseRepository = new DriverLicenseRepository()) {
            if (driverLicenseRepository.findById(driverLicense.getId()) != null) {
                return driverLicenseRepository.edit(driverLicense);
            }else {
                throw new Exception("DriverLicense not found");
            }

        }
    }


    public DriverLicense deleteById(int id) throws Exception{
        try (DriverLicenseRepository driverLicenseRepository = new DriverLicenseRepository()) {
            if (driverLicenseRepository.findById(id) != null) {
                return driverLicenseRepository.deleteById(id);
            }else {
                throw new Exception("DriverLicense not found");
            }

        }
    }

    public DriverLicense findById(int id) throws Exception{
        try (DriverLicenseRepository driverLicenseRepository = new DriverLicenseRepository()) {
            return driverLicenseRepository.findById(id);
        }
    }


    public List<DriverLicense> findAll() throws Exception{
        try (DriverLicenseRepository driverLicenseRepository = new DriverLicenseRepository()) {
            return driverLicenseRepository.findAll();
        }
    }


}
