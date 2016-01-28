package com.filsum.model;

import org.hibernate.validator.constraints.NotEmpty;

public class RunnerFormData {

    private Runner runner;

    @NotEmpty(message = "Bitte wähle eine Strecke aus")
    private Long selectedRun;

    public RunnerFormData() {
        runner = new Runner();
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
}
