package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.Sailor;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Sailor.class)
@Controller
@RequestMapping("/sailors")
public class SailorController {
}
