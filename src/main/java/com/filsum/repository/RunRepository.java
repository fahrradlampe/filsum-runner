package com.filsum.repository;

import com.filsum.model.Run;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface RunRepository extends JpaRepository<Run, Long> {

    List<Run> findByparticipationDeadlineAfter(Date date);
}
