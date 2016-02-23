package com.filsum.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

public class RunnerFormData {

    private Runner runner;

    private List<Runner> furtherRunners = new ArrayList<>();

    @NotNull(message = "Bitte wähle eine Strecke aus")
    private Long selectedRun;

    public RunnerFormData() {
        runner = new Runner();
        furtherRunners.add(new Runner());
        furtherRunners.add(new Runner());
        furtherRunners.add(new Runner());
        furtherRunners.add(new Runner());
        furtherRunners.add(new Runner());
    }

    public Runner getRunner() {
        return runner;
    }

    public void setRunner(Runner runner) {
        this.runner = runner;
    }

    public Long getSelectedRun() {
        return selectedRun;
    }

    public void setSelectedRun(Long selectedRun) {
        this.selectedRun = selectedRun;
    }

    public List<Runner> getFurtherRunners() {
        return furtherRunners;
    }

    public void setFurtherRunners(List<Runner> furtherRunners) {
        this.furtherRunners = furtherRunners;
    }
}
