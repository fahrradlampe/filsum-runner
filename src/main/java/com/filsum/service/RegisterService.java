package com.filsum.service;

import com.filsum.model.Participation;
import com.filsum.model.Run;
import com.filsum.model.Runner;
import com.filsum.model.RunnerFormData;
import com.filsum.repository.ParticipationRepository;
import com.filsum.repository.RunRepository;
import com.filsum.repository.RunnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class RegisterService {

    @Autowired
    private RunnerRepository runnerRepository;

    @Autowired
    private RunRepository runRepository;

    @Autowired
    private ParticipationRepository participationRepository;

    @Autowired
    private MailService mailService;

    public Participation createParticipation(RunnerFormData runnerData) throws Exception {
        Runner runner = runnerRepository.save(runnerData.getRunner());
        Run run = runRepository.findOne(runnerData.getSelectedRun());
        Participation participation = new Participation();
        participation.setRun(run);
        participation.setRunner(runner);
        participationRepository.save(participation);

        mailService.sendParticpation(participation);

        return participation;
    }

    public List<Run> findRunsToRegister(){
        return runRepository.findByparticipationDeadlineAfter(LocalDate.now());
    }
}
