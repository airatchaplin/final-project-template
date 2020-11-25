package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.Skateboard;
import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.repository.SkateboardRepository;
import com.epam.rd.izh.repository.UserRepository;
import com.epam.rd.izh.service.SkateboardService;
import com.epam.rd.izh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class ShopController {

    @Autowired
    SkateboardRepository skateboardRepository;

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

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
        model.addAttribute("findSkateboardById",skateboardService.findSkateboardById(id));
        return "itemShop";
    }

    @PostMapping("/shop/id={id}")
    public String addItemByUser(@PathVariable(value = "id") Long id, Model model) {
        model.addAttribute("addItemByUser",userService.addItemByUser(id));

       return "redirect:/shop";
    }

    @GetMapping("/username={username}")
    public String getItemShop(@PathVariable(value = "username") String username, Model model) {
        model.addAttribute("user",userService.findUserByUsername(username));
        return "personalAccount";
    }

    @PostMapping("/username={username}")
    public String deleteItemByUser(@PathVariable(value = "username") String username, Model model) {
        model.addAttribute("deleteItemByUser",userService.deleteItemByUser());
        return "personalAccount";
    }

}
