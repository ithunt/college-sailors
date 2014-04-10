package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.Fleet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/fleets")
@Controller
@RooWebScaffold(path = "fleets", formBackingObject = Fleet.class)
public class FleetController {
}
