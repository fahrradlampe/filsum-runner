package com.filsum.controller;

import com.filsum.model.Participation;
import com.filsum.service.ParticipationService;
import com.filsum.service.RegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ParticipationController {

    private static final String REGISTER = "register";

    private final Logger log = LoggerFactory.getLogger(ParticipationController.class);

    @Autowired
    private ParticipationService participationService;

    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "/participantslist")
    public String participantView(Model model) {
        log.debug("participants list");


        List<Participation> particpiants = participationService.findParticipants();
        model.addAttribute("participants", particpiants);

        return "startlist";
    }

    @RequestMapping(value = "/results")
    public String resultsView(Model model) {
        log.debug("participants list");


        List<Participation> particpiants = participationService.findParticipants();
        model.addAttribute("participants", particpiants);

        return "results";
    }
}
