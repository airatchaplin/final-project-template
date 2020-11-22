package com.epam.rd.izh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemShopController {

    @GetMapping("/itemShop")
    public String itemShop(){
        return "itemShop";
    }
}
