package com.filsum.repository;

import com.filsum.model.Participation;
import com.filsum.model.Run;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Katrin Mischok
 */
@Repository
public interface ParticipationRepository extends JpaRepository<Participation, Long> {

    List<Participation> findByRun(Run run);
}
