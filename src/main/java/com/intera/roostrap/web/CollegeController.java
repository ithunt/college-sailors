package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.College;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/colleges")
@Controller
@RooWebScaffold(path = "colleges", formBackingObject = College.class)
public class CollegeController {
}
