package com.sleepy.driverlicenses.entity;


import com.fasterxml.jackson.annotation.JsonProperty;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;


@NoArgsConstructor
@Getter
@Setter
@SuperBuilder
@AllArgsConstructor

@Entity(name="driverLicenseEntity")
@Table(name="driverLicense")
public class DriverLicense {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "personId", nullable = false)
    @JsonProperty("شناسه شخص")
    private int personId;


    @Column(name = "serial", nullable = false, unique = true)
    @JsonProperty("شماره سریال")
    private int serialNumber;

    @Column(name = "licenseType", nullable = false)
    @JsonProperty("نوع گواهینامه")
    @Enumerated(EnumType.STRING)
    private LicenseType licenseType;

    @Column(name="city", nullable = false)
    @JsonProperty("شهر")
    @Enumerated(EnumType.STRING)
    private City city;

    @Column(name="registerDate", nullable = false)
    @JsonProperty("تاریخ ثبت")
    private LocalDate registerDate;

    @Column(name = "expiryDate", nullable = false)
    @JsonProperty("تاریخ انقضا")
    private LocalDate expiryDate;





}
