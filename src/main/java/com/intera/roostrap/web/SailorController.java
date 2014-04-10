package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.Sailor;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sailors")
@Controller
@RooWebScaffold(path = "sailors", formBackingObject = Sailor.class)
public class SailorController {
}
