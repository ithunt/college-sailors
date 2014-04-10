package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.College;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = College.class)
@Controller
@RequestMapping("/colleges")
public class CollegeController {
}
