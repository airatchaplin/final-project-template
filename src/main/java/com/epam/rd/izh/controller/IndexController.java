package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

  @Autowired
  UserService userService;

  @GetMapping("/")
  public String login() {
    return "index";
  }

  @RequestMapping("/403")
  public String error403() {
    return "error";
  }

  @GetMapping("/username={username}")
  public String getItemShop(@PathVariable(value = "username") String username, Model model) {
    model.addAttribute("user",userService.findUserByUsername(username));
    return "personalAccount";
  }

}
