package com.filsum.repository;

import com.filsum.model.Run;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Katrin Mischok
 */
@Repository
public interface RunRepository extends JpaRepository<Run, Long> {

}
