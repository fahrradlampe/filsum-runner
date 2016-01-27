package com.filsum.service;

import com.filsum.model.Participation;
import com.filsum.model.Run;
import com.filsum.repository.ParticipationRepository;
import com.filsum.repository.RunRepository;
import com.filsum.repository.RunnerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParticipationService {

    private final Logger log = LoggerFactory.getLogger(ParticipationService.class);


    @Autowired
    private RunnerRepository runnerRepository;

    @Autowired
    private RunRepository runRepository;

    @Autowired
    private ParticipationRepository participationRepository;

    public List<Participation> findParticipants(){
        return participationRepository.findAll();
    }


}
