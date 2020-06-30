/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.school.trainer.controllers;

import com.school.trainer.model.Trainer;
import com.school.trainer.services.TrainerServiceInterface;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ELIZA
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;

    @GetMapping("createTrainer")
    public String showForm(ModelMap mm) {
        mm.addAttribute("newTrainer", new Trainer());
        return "createTrainer";
    }

    @PostMapping("createTrainer")
    public void insertTrainer(@ModelAttribute("newTrainer") Trainer t,
            HttpServletResponse response) throws IOException {
        trainerServiceInterface.insertTrainer(t);
        response.sendRedirect("createTrainer");
    }

    @GetMapping("trainerDetails")
    public String showDetails(ModelMap mm) {
        List<Trainer> trainers = trainerServiceInterface.fetchAllTrainers();
        Map<Integer, String> trainerMap = new HashMap<>();
        for (Trainer tr : trainers) {

            trainerMap.put(tr.getTrainerId(), tr.getFirstName() + " " + tr.getLastName());
        }
        mm.addAttribute("trainerList", trainerMap);
        mm.addAttribute("trainer", new Trainer());
        return "readTrainerDetails";
    }

    @PostMapping("trainerDetails")
    public String trainerDetails(@ModelAttribute("trainer") Trainer t,
            ModelMap mm) {

        Trainer trainer = trainerServiceInterface.fetchTrainerById(t.getTrainerId());
        mm.addAttribute("selectedTrainer", trainer);
        List<String> subjectList = new ArrayList();
        subjectList.add("Java");
        subjectList.add("C#");
        subjectList.add("Frond-End");
        subjectList.add("Database");
        mm.addAttribute("subjectList", subjectList);

        return "updateTrainer";
    }
    
    

    @PostMapping("updateTrainer")
    public void updateTrainerDetails(@ModelAttribute("selectedTrainer") Trainer t,
            HttpServletResponse response) throws IOException {
        trainerServiceInterface.insertTrainer(t);
        response.sendRedirect("trainerDetails");
    }

    @GetMapping("deleteTrainer")
    public String deletetrainer(ModelMap mm) {
        List<Trainer> trainers = trainerServiceInterface.fetchAllTrainers();
        mm.addAttribute("trainerList", trainers);

        return "deleteTrainer";
    }

    @PostMapping("deleteTrainer")
    public void doDeleteTrainer(
            @RequestParam("selectedTrainer") int trainerId,
            HttpServletResponse response) throws IOException {

        trainerServiceInterface.deleteTrainerById(trainerId);

        response.sendRedirect("deleteTrainer");
    }
}
