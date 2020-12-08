package com.epam.rd.izh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public String login() {
        return "index";
    }

    @RequestMapping("/403")
    public String error403() {
        return "error";
    }

}
