package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.Race;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/races")
@Controller
@RooWebScaffold(path = "races", formBackingObject = Race.class)
public class RaceController {
}
