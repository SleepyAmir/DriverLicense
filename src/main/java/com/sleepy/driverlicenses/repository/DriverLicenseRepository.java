package com.sleepy.driverlicenses.repository;

import com.sleepy.driverlicenses.entity.DriverLicense;
import com.sleepy.driverlicenses.tools.JpaProvider;
import jakarta.persistence.*;

import java.util.List;

public class DriverLicenseRepository implements AutoCloseable{

    private EntityManager entityManager;


    public DriverLicenseRepository() {
        entityManager = JpaProvider.getProvider().getEntityManager();
    }


    public DriverLicense save(DriverLicense driverLicense) {
        EntityTransaction entityTransaction =  entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.persist(driverLicense);
        entityTransaction.commit();
        return driverLicense;

    }

    public DriverLicense edit(DriverLicense driverLicense) {
        EntityTransaction entityTransaction =  entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.merge(driverLicense);
        entityTransaction.commit();
        return driverLicense;
    }


    public DriverLicense deleteById(int id) {
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        DriverLicense driverLicense = entityManager.find(DriverLicense.class, id);
        entityManager.remove(driverLicense);
        entityTransaction.commit();
        return driverLicense;
    }


    public List<DriverLicense> findAll(){
        Query  query = entityManager.createQuery("select p from driverLicenseEntity p", DriverLicense.class);
        return query.getResultList();
    }



    public DriverLicense findById(int id) {
        return entityManager.find(DriverLicense.class, id);
    }





    @Override
    public void close() throws Exception {

    }
}
