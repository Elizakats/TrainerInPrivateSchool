/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.school.trainer.services;

import com.school.trainer.model.Trainer;
import java.util.List;

/**
 *
 * @author ELIZA
 */
public interface TrainerServiceInterface {

    public void insertTrainer(Trainer t);

    public List<Trainer> fetchAllTrainers();

    public Trainer fetchTrainerById(int id);

    public void deleteTrainerById(int id);
}
