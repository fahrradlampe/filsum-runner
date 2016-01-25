package com.filsum.model;

/**
 * Created by Katrin on 25.01.2016.
 */
public class RunnerFormData {

    private Runner runner;

    private long selectedRun;

    public RunnerFormData() {
        runner = new Runner();
    }

    public Runner getRunner() {
        return runner;
    }

    public void setRunner(Runner runner) {
        this.runner = runner;
    }

    public long getSelectedRun() {
        return selectedRun;
    }

    public void setSelectedRun(long selectedRun) {
        this.selectedRun = selectedRun;
    }
}
