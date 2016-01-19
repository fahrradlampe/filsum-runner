package com.filsum.controller;

import com.filsum.model.Runner;
import com.filsum.service.RegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Katrin Mischok
 */
@Controller
public class RegisterController {

    private static final String REGISTER = "register";

    private final Logger log = LoggerFactory.getLogger(RegisterController.class);

    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "/register")
    public String registerView(Model model) {
        log.debug("register runner view");

        return "register/register";
    }

    @RequestMapping(value = "/register/add", method = RequestMethod.POST)
    public String registerAdd(Model model, @ModelAttribute("runner") Runner runner) {
        log.debug("add new runner");

        registerService.createRunner(runner);

        return "register/register";
    }

}
