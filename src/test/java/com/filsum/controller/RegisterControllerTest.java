package com.filsum.controller;

import com.filsum.model.Run;
import com.filsum.model.RunnerFormData;
import com.filsum.service.RegisterService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

import static org.mockito.Mockito.*;

public class RegisterControllerTest {

    private RegisterController testee;

    private Model model;
    private RegisterService registerService;

    @Before
    public void setUp() {
        registerService = mock(RegisterService.class);
        model = mock(Model.class);

        testee = new RegisterController();
        testee.setRegisterService(registerService);
    }

    @Test
    public void testRegisterView() {
        testee.registerView(model);

        verify(model).addAttribute(eq("runnerData"), any(RunnerFormData.class));
        List<Run> runs = new ArrayList<>();
        when(registerService.findRunsToRegister()).thenReturn(runs);
        verify(model).addAttribute("runs", runs);
    }
}