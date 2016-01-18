package com.filsum.service;

import com.filsum.repository.RunRepository;
import com.filsum.repository.RunnerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    private final Logger log = LoggerFactory.getLogger(RegisterService.class);


    @Autowired
    private RunnerRepository runnerRepository;

    @Autowired
    private RunRepository runRepository;


}
