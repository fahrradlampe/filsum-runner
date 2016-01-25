package com.filsum.service;

import com.filsum.model.Participation;
import com.filsum.model.Run;
import com.filsum.model.Runner;
import com.filsum.model.RunnerFormData;
import com.filsum.repository.ParticipationRepository;
import com.filsum.repository.RunRepository;
import com.filsum.repository.RunnerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class RegisterService {

    private final Logger log = LoggerFactory.getLogger(RegisterService.class);


    @Autowired
    private RunnerRepository runnerRepository;

    @Autowired
    private RunRepository runRepository;

    @Autowired
    private ParticipationRepository participationRepository;

    /**
     * creates a new runner, if the email does not exist
     * @param runnerData
     * @return
     */
    public Participation createParticipation(RunnerFormData runnerData){

        //runnerRepository.findByEmail(runner.getEmail());
        Runner runner = runnerRepository.save(runnerData.getRunner());
        Run run = runRepository.findOne(runnerData.getSelectedRun());
        Participation participation = new Participation();
        participation.setRun(run);
        participation.setRunner(runner);
        participationRepository.save(participation);
        return participation;
    }


    public List<Run> findActualRuns(){
        return runRepository.findByparticipationDeadlineAfter(new Date());
    }

}
