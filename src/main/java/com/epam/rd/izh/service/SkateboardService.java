package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Skateboard;
import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.repository.SkateboardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class SkateboardService {

    @Autowired
    SkateboardRepository skateboardRepository;


    public Skateboard findUserById(Long userId) {
        Optional<Skateboard> userFromDb = skateboardRepository.findById(userId);
        return userFromDb.orElse(new Skateboard());
    }
}
