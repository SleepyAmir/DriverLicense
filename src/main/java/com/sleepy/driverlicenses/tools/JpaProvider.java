package com.sleepy.driverlicenses.tools;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import lombok.Getter;

public class JpaProvider {
    @Getter
    private static JpaProvider provider = new JpaProvider();
    private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("sleepy");

    private JpaProvider() {
    }

    public EntityManager getEntityManager() {
        return factory.createEntityManager();
    }



}
