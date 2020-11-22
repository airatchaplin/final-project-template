package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.Skateboard;
import com.epam.rd.izh.repository.SkateboardRepository;
import com.epam.rd.izh.service.SkateboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.Optional;

@Controller
public class ShopController {

    @Autowired
    SkateboardRepository skateboardRepository;

    @Autowired
    SkateboardService skateboardService;

    @GetMapping("/shop")
    public String shop(Model model) {
        Iterable<Skateboard> skateboards = skateboardRepository.findAll();
        model.addAttribute("skateboards", skateboards);
        return "shop";
    }

    @GetMapping("/shop/id={id}")
    public String getItemShop(@PathVariable(value = "id") Long id, Model model) {
        model.addAttribute("findUserById",skateboardService.findUserById(id));
        return "itemShop";
    }


}
