package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Skateboard;
import com.epam.rd.izh.repository.SkateboardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class SkateboardService {

    @Autowired
    SkateboardRepository skateboardRepository;

    public Skateboard findSkateboardById(Long userId) {
        Optional<Skateboard> skateboard = skateboardRepository.findById(userId);
        return skateboard.orElse(new Skateboard());
    }

}
