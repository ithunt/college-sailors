package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.FleetScore;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/fleetscores")
@Controller
@RooWebScaffold(path = "fleetscores", formBackingObject = FleetScore.class)
public class FleetScoreController {
}
