package com.filsum.controller;

import com.filsum.model.Participation;
import com.filsum.service.ParticipationService;
import com.filsum.service.RegisterService;
import com.jcabi.log.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
public class ParticipationController {

    @Autowired
    private ParticipationService participationService;

    @Autowired
    private RegisterService registerService;

    /**
     * shows the paid participants of runs of the actual year
     * @param model
     * @return
     */
    @RequestMapping(value = "/participantslist")
    public String participantView(Model model) {
        Logger.debug(this, "participants list");

        LocalDate actualDate = LocalDate.now();
        List<Participation> particpiants = participationService.findActualPaidParticipants(actualDate.getYear());
        model.addAttribute("participants", particpiants);

        return "startlist";
    }

    @RequestMapping(value = "/results")
    public String resultsView(Model model) {
        Logger.debug(this, "participants list");

        List<Participation> particpiants = participationService.findParticipantsWithResults();
        model.addAttribute("participants", particpiants);

        return "results";
    }
}
