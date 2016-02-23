package com.filsum.repository;

import com.filsum.model.Run;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface RunRepository extends JpaRepository<Run, Long> {

    List<Run> findByparticipationDeadlineAfter(LocalDate date);

    List<Run> findByStartDateBetween(LocalDate start, LocalDate end);

    List<Run> findByStartDateBetweenAndNameLike(LocalDate start, LocalDate end, String name);
}
