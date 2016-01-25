package com.filsum.controller;

import com.filsum.model.Participation;
import com.filsum.model.Run;
import com.filsum.model.Runner;
import com.filsum.service.ParticipationService;
import com.filsum.service.RegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @author Katrin Mischok
 */
@Controller
public class ParticipationController {

    private static final String REGISTER = "register";

    private final Logger log = LoggerFactory.getLogger(ParticipationController.class);

    @Autowired
    private ParticipationService participationService;

    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "/participantslist")
    public String registerView(Model model) {
        log.debug("participants list");


        List<Participation> particpiants = participationService.findParticipants();
        model.addAttribute("participants", particpiants);

        return "startlist";
    }
}
