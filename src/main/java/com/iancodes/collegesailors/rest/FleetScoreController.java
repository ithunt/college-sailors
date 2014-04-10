package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.FleetScore;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = FleetScore.class)
@Controller
@RequestMapping("/fleetscores")
public class FleetScoreController {
}
