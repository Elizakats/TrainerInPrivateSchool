/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.school.trainer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author ELIZA
 */
@Controller
public class HomeController {

    @GetMapping("index")
    public String homePage() {
        return "index";
    }
}
