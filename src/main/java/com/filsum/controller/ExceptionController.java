package com.filsum.controller;


import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @author Katrin Mischok, Monday Consulting
 */
@ControllerAdvice
public class ExceptionController {

    @ExceptionHandler(Exception.class)
    public ModelAndView accessDeniedException(HttpServletRequest request,
            Exception ade) {

        ModelAndView mv = new ModelAndView();

        return mv;
    }


}
