/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.andre.nilai.service;

import com.andre.nilai.entity.Nilai;
import com.andre.nilai.repository.NilaiRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author andreferdinan
 */
@Service
public class NilaiService {
    
    private final NilaiRepository nilaiRepository;
    @Autowired
    public NilaiService(NilaiRepository nilaiRepository){
        this.nilaiRepository = nilaiRepository;
    }
   
    public List<Nilai> getAll(){
        return nilaiRepository.findAll();
    }
    
    public void insert(Nilai nilai){
        Optional<Nilai> nilaiOptional = 
                nilaiRepository.findNilaiById(nilai.getId());
        if(nilaiOptional.isPresent()){
            throw new IllegalStateException("Email Sudah Ada");
        }
        nilaiRepository.save(nilai);
    }
    
   
    
}
