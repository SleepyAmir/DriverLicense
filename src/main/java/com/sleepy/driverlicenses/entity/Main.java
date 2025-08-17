package com.sleepy.driverlicenses.entity;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.hibernate.jpa.boot.spi.EntityManagerFactoryBuilder;

public class Main {
    public static void main(String[] args) {

        DriverLicense driverLicense = DriverLicense.builder().licenseType(LicenseType.CAR).serial(1234).build();

        System.out.println(driverLicense.getLicenseType());


        EntityManagerFactory emf= Persistence.createEntityManagerFactory("sleepy");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(driverLicense);
        em.getTransaction().commit();

    }
}
