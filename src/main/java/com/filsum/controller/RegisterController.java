package com.filsum.controller;

import com.filsum.model.Run;
import com.filsum.model.RunnerFormData;
import com.filsum.service.RegisterService;
import com.jcabi.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "/register")
    public String registerView(Model model) {
        Logger.debug(this, "register runner view");
        model.addAttribute("runnerData", new RunnerFormData());

        List<Run> runs = registerService.findActualRuns();
        model.addAttribute("runs", runs);
        return "register/register";
    }

    @RequestMapping(value = "/register/add", method = RequestMethod.POST)
    public String registerAdd(Model model, @ModelAttribute("runnerData") @Valid RunnerFormData runnerData, BindingResult bindingResult) {
        Logger.debug(this, "add new runner");

        if (bindingResult.hasErrors()) {
            List<Run> runs = registerService.findActualRuns();
            model.addAttribute("runs", runs);
            return "register/register";
        }

        registerService.createParticipation(runnerData);
        return "register/registerSuccess";
    }

    protected void setRegisterService(RegisterService registerService) {
        this.registerService = registerService;
    }
}
