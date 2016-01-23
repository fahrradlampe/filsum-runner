package com.filsum.service;

import com.filsum.model.Run;
import com.filsum.model.Runner;
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

    /**
     * creates a new runner, if the email does not exist
     * @param runner runner
     * @return created runner
     */
    public Runner createRunner(Runner runner){

        runnerRepository.findByEmail(runner.getEmail());
        return runnerRepository.save(runner);
    }


    public List<Run> findActualRuns(){
        return runRepository.findByparticipationDeadlineAfter(new Date());
    }

}
