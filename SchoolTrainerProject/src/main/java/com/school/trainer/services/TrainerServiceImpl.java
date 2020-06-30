/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.school.trainer.services;

import com.school.trainer.model.Trainer;
import com.school.trainer.repo.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ELIZA
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
    }

    @Override
    @Transactional
    public List<Trainer> fetchAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    @Transactional
    public Trainer fetchTrainerById(int id) {
        return trainerRepository.getOne(id);
    }

    @Override
    @Transactional
    public void deleteTrainerById(int id) {
        trainerRepository.deleteById(id);
    }
}
