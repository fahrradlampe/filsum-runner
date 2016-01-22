package com.filsum.model;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@XmlRootElement
@Table(name = "participation")
public class Participation implements Serializable {

    // id
    private Long participationId;

    private Long time;

    private Run run;

    private Runner runner;

    @Id
    @GeneratedValue
    public Long getParticipationId() {
        return participationId;
    }

    public void setParticipationId(Long participationId) {
        this.participationId = participationId;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    @ManyToOne
    public Run getRun() {
        return run;
    }

    public void setRun(Run run) {
        this.run = run;
    }

    @ManyToOne
    public Runner getRunner() {
        return runner;
    }

    public void setRunner(Runner runner) {
        this.runner = runner;
    }
}