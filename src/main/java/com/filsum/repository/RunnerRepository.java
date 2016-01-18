package com.filsum.repository;


import com.filsum.model.Runner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Katrin Mischok
 */
@Repository
public interface RunnerRepository extends JpaRepository<Runner, Long> {

}
