package com.epam.rd.izh.controller;

import static com.epam.rd.izh.util.StringConstants.ENG_GREETING;

import com.epam.rd.izh.dto.Message;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

  @GetMapping("/")
  public String login() {
    return "index";
  }

}
