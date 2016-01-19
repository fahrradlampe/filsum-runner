package com.filsum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 *
 * @author Dirk Dittmar / Monday Consulting GmbH
 */
@Controller
public class IndexViewController {

    @RequestMapping(path = "/index")
    public String viewIndex() {
        return "index";
    }

}
