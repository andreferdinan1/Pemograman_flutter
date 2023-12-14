/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.andre.nilai.repository;
import com.andre.nilai.entity.Nilai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author andreferdinan
 */
@Repository
public interface NilaiRepository extends  JpaRepository<Nilai, Long> {
    
}
    

