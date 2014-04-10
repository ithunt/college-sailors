package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.Race;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Race.class)
@Controller
@RequestMapping("/races")
public class RaceController {
}
