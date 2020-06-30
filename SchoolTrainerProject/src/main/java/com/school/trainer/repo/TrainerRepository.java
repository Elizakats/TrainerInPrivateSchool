/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.school.trainer.repo;

import com.school.trainer.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ELIZA
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
    
}
