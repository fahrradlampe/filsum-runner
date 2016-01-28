package com.filsum.repository;


import com.filsum.model.Runner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RunnerRepository extends JpaRepository<Runner, Long> {

    List<Runner> findByEmail(String email);
}
