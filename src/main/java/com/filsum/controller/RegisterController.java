package com.filsum.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Katrin Mischok
 */
@Controller
public class RegisterController {

    private static final String REGISTER = "register";

    private final Logger log = LoggerFactory.getLogger(RegisterController.class);



    @RequestMapping(value = "/register")
    public String register(Model model) {
        log.debug("register user");

        return "register/register";
    }


}
