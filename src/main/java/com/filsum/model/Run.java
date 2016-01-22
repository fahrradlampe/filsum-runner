package com.filsum.model;


import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Entity
@XmlRootElement
@Table(name = "run")
public class Run implements Serializable {

    // id
    private Long runId;

    private String name;

    private Long distance;

    private Date startDate;

    private BigDecimal charge;

    private Date participationDeadline;

    private List<Participation> participation;

    @Id
    @GeneratedValue
    public Long getRunId() {
        return runId;
    }

    public void setRunId(Long runId) {
        this.runId = runId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getDistance() {
        return distance;
    }

    public void setDistance(Long distance) {
        this.distance = distance;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @OneToMany(mappedBy = "run", fetch = FetchType.EAGER)
    public List<Participation> getParticipation() {
        return participation;
    }

    public void setParticipation(List<Participation> participation) {
        this.participation = participation;
    }

    public Date getParticipationDeadline() {
        return participationDeadline;
    }

    public void setParticipationDeadline(Date participationDeadline) {
        this.participationDeadline = participationDeadline;
    }

    public BigDecimal getCharge() {
        return charge;
    }

    public void setCharge(BigDecimal charge) {
        this.charge = charge;
    }
}