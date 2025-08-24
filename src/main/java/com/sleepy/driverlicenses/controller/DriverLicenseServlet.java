package com.sleepy.driverlicenses.controller;

import com.sleepy.driverlicenses.entity.City;
import com.sleepy.driverlicenses.entity.DriverLicense;
import com.sleepy.driverlicenses.entity.LicenseType;
import com.sleepy.driverlicenses.service.DriverLicenseService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;


@WebServlet(name ="driverLicenses" , urlPatterns = "/driverLicenses")
public class DriverLicenseServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            DriverLicenseService driverLicenseService = new DriverLicenseService();
            req.getSession().setAttribute("driverLicenseList", driverLicenseService.findAll());


        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Error Find: "+e.getMessage());
        }

        req.getRequestDispatcher("/index.jsp").forward(req, resp);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
        DriverLicenseService driverLicenseService = new DriverLicenseService();

        DriverLicense driverLicense=
                DriverLicense
                        .builder()
                        .personId(Integer.parseInt(req.getParameter("personId")))
                        .serialNumber(Integer.parseInt(req.getParameter("serialNumber")))
                        .licenseType(LicenseType.valueOf(req.getParameter("licenseType")))
                        .city(City.valueOf(req.getParameter("city")))
                        .registerDate(LocalDate.parse(req.getParameter("registerDate")))
                        .expiryDate(LocalDate.parse(req.getParameter("expiryDate")))
                        .build();

        driverLicenseService.save(driverLicense);
            System.out.println("DriverLicense Saved Successfully");


        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Error Save: "+e.getMessage());
        }
    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    }

