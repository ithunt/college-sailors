package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.Fleet;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Fleet.class)
@Controller
@RequestMapping("/fleets")
public class FleetController {
}
