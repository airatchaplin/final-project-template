package com.epam.rd.izh.repository;

import com.epam.rd.izh.entity.Skateboard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkateboardRepository extends JpaRepository<Skateboard,Long> {
}
